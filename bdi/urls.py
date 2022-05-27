from django.urls import path
from . import views

urlpatterns = [
    path('test/', views.test, name='bdi-test'),
    path('results/', views.result, name='bdi-result'),
    path('search/', views.search, name='bdi-search')
]

