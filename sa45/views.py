import datetime
from django.shortcuts import render, redirect
from .models import Answers, Questions, Results_of_users
from django.contrib import messages
from django.contrib.auth.decorators import login_required
from django.core.paginator import Paginator


@login_required
def test(request):
    context = {
        'questions': Questions.objects.all(),
        'answers': Answers.objects.all(),
        'title': 'SA-45'
    }

    global_severity_index = 0
    positive_symptom_total = 0
    count_pst = 0
    somatization_p = 0
    obsessive_compulsion_p = 0
    interpersonal_sensitivity_p = 0
    depression_p = 0
    anxiety_p = 0
    hostility_p = 0
    phobic_anxiety_p = 0
    paranoid_ideation_p = 0
    psychoticism_p = 0
    raw_anx = 0
    raw_dep = 0
    raw_hos = 0
    raw_int = 0
    raw_oc = 0
    raw_par = 0
    raw_pho = 0
    raw_psy = 0
    raw_som = 0

    if request.method == 'POST':
        answers_of_user = request.POST.items()
        for k, v in answers_of_user:
            if not k.startswith('csrfmiddlewaretoken'):
                global_severity_index += int(v)
                if int(v) == 1:
                    count_pst += 1

                positive_symptom_total = int(45 - count_pst)
            if k.startswith('Somatization'):
                somatization_p += int(v) / 5
                raw_som += int(v)
            if k.startswith('Obsessive Compulsion'):
                obsessive_compulsion_p += int(v) / 4
                raw_oc += int(v)
            if k.startswith('Interpersonal Sensitivity'):
                interpersonal_sensitivity_p += int(v) / 4
                raw_int += int(v)
            if k.startswith('Depression'):
                depression_p += int(v) / 6
                raw_dep += int(v)
            if k.startswith('Anxiety'):
                anxiety_p += int(v) / 5
                raw_anx += int(v)
            if k.startswith('Hostility '):
                hostility_p += int(v) / 5
                raw_hos += int(v)
            if k.startswith('Phobic Anxiety'):
                phobic_anxiety_p += int(v) / 6
                raw_pho += int(v)
            if k.startswith('Paranoid Ideation'):
                paranoid_ideation_p += int(v) / 5
                raw_par += int(v)
            if k.startswith('Psychoticism'):
                psychoticism_p += int(v) / 5
                raw_psy += int(v)

        avg_gsi = (
                              somatization_p + obsessive_compulsion_p + interpersonal_sensitivity_p + depression_p + anxiety_p + hostility_p + phobic_anxiety_p + paranoid_ideation_p + psychoticism_p) / 45.0
        results = Results_of_users(global_severity_index=global_severity_index,
                                   positive_symptom_total=positive_symptom_total,
                                   somatization_p="{:.2f}".format(somatization_p),
                                   obsessive_compulsion_p="{:.2f}".format(obsessive_compulsion_p),
                                   interpersonal_sensitivity_p="{:.2f}".format(interpersonal_sensitivity_p),
                                   depression_p="{:.2f}".format(depression_p),
                                   anxiety_p="{:.2f}".format(anxiety_p), hostility_p="{:.2f}".format(hostility_p),
                                   phobic_anxiety_p="{:.2f}".format(phobic_anxiety_p),
                                   paranoid_ideation_p="{:.2f}".format(paranoid_ideation_p),
                                   psychoticism_p="{:.2f}".format(psychoticism_p), avg_gsi="{:.2f}".format(avg_gsi),
                                   date=datetime.datetime.now(), user_id=request.user.id, raw_dep=raw_dep,
                                   raw_oc=raw_oc, raw_int=raw_int,
                                   raw_pho=raw_pho, raw_psy=raw_psy, raw_par=raw_par, raw_som=raw_som, raw_hos=raw_hos,
                                   raw_anx=raw_anx)
        results.save()
        # messages.warning(request, anxiety_p)
        messages.info(request, 'Thank You ! Your submission has been received')
        return redirect('base')
    else:
        return render(request, 'sa45/test.html', context)


@login_required
def result(request):
    if request.user.is_superuser:
        paginator = Paginator(Results_of_users.objects.all(), 10)
        page_number = request.GET.get('page')
        page_obj = paginator.get_page(page_number)
        context = {
            'result': Results_of_users.objects.all(),
            'page_obj': page_obj,
        }

        return render(request, 'sa45/result.html', context)
    else:
        return redirect('base')


def search(request):
    if request.method == 'POST':
        search_data = request.POST['search']
        search_result = Results_of_users.objects.filter(user__username__icontains=search_data)
        return render(request, 'sa45/search.html', {'search_data': search_data, 'search_result': search_result})
    else:
        return redirect('base')
