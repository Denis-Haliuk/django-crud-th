
from django.urls import path, include
from . import views
urlpatterns = [
    path('', views.main_page, name='main_page'), 
    path('stud_form/', views.stud_form, name='stud_form'), 
    path('stud_form/<int:id>/', views.stud_form, name='stud_form_id'),  
    path('stud_form/delete/<int:id>/', views.stud_delete, name='stud_delete'),  
    path('stud_list/', views.stud_list, name='stud_list'),
    path('prepod_form/', views.prepod_form, name='prepod_form'),   
    path('prepod_form/<int:id>/', views.prepod_form, name='prepod_form_id'),   
    path('prepod_form/delete/<int:id>/', views.prepod_delete, name='prepod_delete'),   
    path('prepod_list/', views.prepod_list, name='prepod_list'),
    path('spec_form/', views.spec_form, name='spec_form'),   
    path('spec_form/<int:id>/', views.spec_form, name='spec_form_id'),   
    path('spec_form/delete/<int:id>/', views.spec_delete, name='spec_delete'),   
    path('spec_list/', views.spec_list, name='spec_list'),

]
