from django.urls import path
from . import views

urlpatterns = [
    path('home/', views.home, name='bai-home'),
    path('test/', views.test, name='bai-test'),
    path('base/', views.base, name='bai-base'),
    path('index/', views.index, name='bai-index'),
    path('results/', views.results, name='bai-result'),
    path('search/', views.search, name='bai-search')
]
