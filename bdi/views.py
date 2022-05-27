from django.shortcuts import render, redirect
from .models import Answers, Result_Of_Users
from django.contrib import messages
import datetime
from django.contrib.auth.decorators import login_required
from django.http import HttpResponseRedirect
from django.core.paginator import Paginator


@login_required
def result(request):
    if request.user.is_superuser:
        paginator = Paginator(Result_Of_Users.objects.all(), 10)
        page_number = request.GET.get('page')
        page_obj = paginator.get_page(page_number)
        chart_data = {
            'These ups and downs are considered normal': Result_Of_Users.objects.filter(
                result_label='These ups and downs are considered normal').count(),
            'Mild mood disturbance': Result_Of_Users.objects.filter(result_label='Mild mood disturbance').count(),
            'Borderline clinical depression': Result_Of_Users.objects.filter(
                result_label='Borderline clinical depression').count(),
            'Moderate depression': Result_Of_Users.objects.filter(result_label='Moderate depression').count(),
            'Severe depression': Result_Of_Users.objects.filter(result_label='Severe depression').count(),
            'Extreme depression': Result_Of_Users.objects.filter(result_label='Extreme depression').count(),
        }
        context = {
            'result': Result_Of_Users.objects.all(),
            'chart_data': chart_data,
            'page_obj': page_obj
        }
        return render(request, 'bdi/results.html', context)
    else:
        return redirect('base')


@login_required
def test(request):
    context = {
        'questions': Answers.objects.all().values_list('question_id', flat=True).distinct(),
        'answers': Answers.objects.all(),
        'title': 'BDI Test'
    }
    total = 0
    if request.method == 'POST':
        answers_of_user = request.POST.items()
        for k, v in answers_of_user:
            if k.startswith('Question'):
                total += int(v)

        if 1 <= total <= 10:
            result_label = 'These ups and downs are considered normal'
        elif 11 <= total <= 16:
            result_label = 'Mild mood disturbance'
        elif 17 <= total <= 20:
            result_label = 'Borderline clinical depression'
        elif 21 <= total <= 30:
            result_label = 'Moderate depression'
        elif 31 <= total <= 40:
            result_label = 'Severe depression'
        elif total > 40:
            result_label = 'Extreme depression'
        else:
            result_label = 'No depression'

        # messages.warning(request, f'Total : {total} Result: {result_label}')
        messages.info(request, 'Thank You ! Your submission has been received')

        result = Result_Of_Users(result_label=result_label, date=datetime.datetime.now(), user_id=request.user.id,
                                 score=total)
        result.save()
        return HttpResponseRedirect('/')

    return render(request, 'bdi/test.html', context)


def search(request):
    if request.method == 'POST':
        search_data = request.POST['search']
        search_result = Result_Of_Users.objects.filter(user__username__icontains=search_data)
        return render(request, 'bdi/search.html', {'search_data': search_data, 'search_result': search_result})
    else:
        return redirect('base')

