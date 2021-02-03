
from django.urls import path, include
from . import views
urlpatterns = [
    path('', views.main_page, name='main_page'), 
    path('stud_form/', views.stud_form, name='stud_form'), 
    path('stud_form/<int:id>/', views.stud_form, name='stud_form_id') ,     
    path('stud_list/', views.stud_list, name='stud_list'),
    path('prepod_form/', views.prepod_form, name='prepod_form'),       
    path('prepod_list/', views.prepod_list, name='prepod_list'),
]
