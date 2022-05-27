import datetime
from django.shortcuts import render, redirect
from .models import Answers, Result_Of_User, Questions
from django.contrib import messages
from django.contrib.auth.decorators import login_required
from django.core.paginator import Paginator


def home(request):
    return render(request, 'bai/home.html')


@login_required
def test(request):
    context = {
        'questions': Questions.objects.all(),
        'answers': Answers.objects.all(),
        'title': 'BAI Test'
    }
    total = 0
    if request.method == 'POST':
        answers_of_user = request.POST.items()
        for k, v in answers_of_user:
            if k.startswith('Question'):
                total += int(v)

        if total <= 21:
            result_label = 'Low Anxiety'
        elif 22 <= total <= 35:
            result_label = 'Moderate Anxiety'
        else:
            result_label = 'Potentially Concerning Levels Of Anxiety'

        messages.warning(request, f'Total : {total} Result : {result_label}')
        result = Result_Of_User(result_label=result_label, date=datetime.datetime.now(), user_id=request.user.id,
                                score=total)
        result.save()
        return redirect('base')

    return render(request, 'bai/test.html', context)


def base(request):
    return render(request, 'bai/base.html')  # silinecek


def index(request):
    return render(request, 'bai/index.html')  # silinecek


@login_required
def results(request):
    if request.user.is_superuser:
        paginator = Paginator(Result_Of_User.objects.all(), 10)
        page_number = request.GET.get('page')
        page_obj = paginator.get_page(page_number)
        chart_data = {
            'Low Anxiety': Result_Of_User.objects.filter(result_label='Low Anxiety').count(),
            'Moderate Anxiety': Result_Of_User.objects.filter(result_label='Moderate Anxiety').count(),
            'Potentially Concerning Levels Of Anxiety': Result_Of_User.objects.filter(
                result_label='Potentially Concerning Levels Of Anxiety').count()
        }
        result_context = {
            'result': Result_Of_User.objects.all(),
            'chart': chart_data,
            'page_obj': page_obj
        }
        return render(request, 'bai/results.html', result_context)
    else:
        return redirect('base')


def search(request):
    if request.method == 'POST':
        search_data = request.POST['search']
        search_result = Result_Of_User.objects.filter(user__username__icontains=search_data)
        return render(request, 'bai/search.html', {'search_data': search_data, 'search_result': search_result})
    else:
        return redirect('base')

