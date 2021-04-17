from django.urls import path, include
from . import views
urlpatterns = [
    path('', views.main_page, name='main_page'), 
    path('stud_form/', views.stud_form, name='stud_form'), 
    path('stud_form/<int:id>/', views.stud_form, name='stud_form_id'),  
    path('stud_form/delete/<int:id>/', views.stud_delete, name='stud_delete'),  
    path('stud_list/', views.stud_list, name='stud_list'),
    path('stud_csv/', views.stud_csv, name='stud_csv'),
    path('stud_upload/', views.stud_upload, name='stud_upload'),
    
    path('prepod_form/', views.prepod_form, name='prepod_form'),   
    path('prepod_form/<int:id>/', views.prepod_form, name='prepod_form_id'),   
    path('prepod_form/delete/<int:id>/', views.prepod_delete, name='prepod_delete'),   
    path('prepod_list/', views.prepod_list, name='prepod_list'),
    path('prepod_csv/', views.prepod_csv, name='prepod_csv'),
    path('prepod_upload/', views.prepod_upload, name='prepod_upload'),
    
    path('spec_form/', views.spec_form, name='spec_form'),   
    path('spec_form/<int:id>/', views.spec_form, name='spec_form_id'),   
    path('spec_form/delete/<int:id>/', views.spec_delete, name='spec_delete'),   
    path('spec_list/', views.spec_list, name='spec_list'),
    path('spec_csv/', views.spec_csv, name='spec_csv'),
    path('spec_upload/', views.spec_upload, name='spec_upload'),
    

    path('groups_form/', views.groups_form, name='groups_form'),   
    path('groups_form/<int:id>/', views.groups_form, name='groups_form_id'),   
    path('groups_form/delete/<int:id>/', views.groups_delete, name='groups_delete'),   
    path('groups_list/', views.groups_list, name='groups_list'),
    path('groups_csv/', views.groups_csv, name='groups_csv'),
    path('groups_upload/', views.groups_upload, name='groups_upload'),

    path('predmety_form/', views.predmety_form, name='predmety_form'),   
    path('predmety_form/<int:id>/', views.predmety_form, name='predmety_form_id'),   
    path('predmety_form/delete/<int:id>/', views.predmety_delete, name='predmety_delete'),   
    path('predmety_list/', views.predmety_list, name='predmety_list'),
    path('predmety_csv/', views.predmety_csv, name='predmety_csv'),
    path('predmety_upload/', views.predmety_upload, name='predmety_upload'),

    path('itog_form/', views.itog_form, name='itog_form'),   
    path('itog_form/<int:id>/', views.itog_form, name='itog_form_id'),   
    path('itog_form/delete/<int:id>/', views.itog_delete, name='itog_delete'),   
    path('itog_list/', views.itog_list, name='itog_list'),
    path('itog_csv/', views.itog_csv, name='itog_csv'),
    path('itog_upload/', views.itog_upload, name='itog_upload'),

    path('upload/', views.upload, name='upload'),

]
