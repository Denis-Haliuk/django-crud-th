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

    path('groups_form/', views.groups_form, name='groups_form'),   
    path('groups_form/<int:id>/', views.groups_form, name='groups_form_id'),   
    path('groups_form/delete/<int:id>/', views.groups_delete, name='groups_delete'),   
    path('groups_list/', views.groups_list, name='groups_list'),

    path('predmety_form/', views.predmety_form, name='predmety_form'),   
    path('predmety_form/<int:id>/', views.predmety_form, name='predmety_form_id'),   
    path('predmety_form/delete/<int:id>/', views.predmety_delete, name='predmety_delete'),   
    path('predmety_list/', views.predmety_list, name='predmety_list'),

    path('itog_form/', views.itog_form, name='itog_form'),   
    path('itog_form/<int:id>/', views.itog_form, name='itog_form_id'),   
    path('itog_form/delete/<int:id>/', views.itog_delete, name='itog_delete'),   
    path('itog_list/', views.itog_list, name='itog_list'),

]
