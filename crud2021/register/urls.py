
from django.urls import path, include
from . import views
urlpatterns = [
    path('', views.stud_form), #localhost:port/crud/... #ТУТ НУЖНО СДЕЛАТЬ МЕНЮ ВЫБОРА ТАБЛИЦЫ ВМЕСТО СТУДФОРМ
    path('stud_form/', views.stud_form),       
    path('stud_list/', views.stud_list),
    path('prepod_form/', views.prepod_form),       
    path('prepod_list/', views.prepod_list),
]
