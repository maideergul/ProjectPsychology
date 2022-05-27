from django.urls import path
from . import views

urlpatterns = [
    path('test/', views.test, name='sa45-test'),
    path('result/', views.result, name='sa45-result'),
    path('search/', views.search, name='sa45-search'),
]
