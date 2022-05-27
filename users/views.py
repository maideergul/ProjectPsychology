from django.shortcuts import render, redirect
from django.contrib import messages
from .forms import UserRegisterForm


def register(request):
    if request.method == 'POST':
        form_register = UserRegisterForm(request.POST)
        if form_register.is_valid():
            form_register.save()
            username = form_register.cleaned_data.get('username')
            messages.info(request, f'Your account has been created!')
            return redirect('login')
    else:
        form_register = UserRegisterForm()
    return render(request, 'users/register.html', {'form_register': form_register})


def base(request):
    return render(request, 'users/base.html')











