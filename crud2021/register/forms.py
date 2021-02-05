from django import forms
from django.core.exceptions import ValidationError
from django.db.models.fields import DateField
from .models import Spisok_stud, Prepod, Specialnost
from django.conf import settings

class StudForm(forms.ModelForm):
    data_rozhdeniya = forms.DateField(input_formats=settings.DATE_INPUT_FORMATS, label='Дата народження', help_text='Приклад: 18-08-2000', widget=forms.TextInput(attrs={'data-mask':"00-00-0000", 'placeholder':"__-__-___",},))
    n_tel = forms.CharField(label='Номер телефону', widget=forms.TextInput(attrs={'input id':"phone", 'placeholder':"+38(___)_______"}),)
    class Meta:
        model = Spisok_stud
        fields = ('n_stud', 'familiya', 'imya','otchestvo',
        'sex', 'vpo', 'sirota','invalid',
        'ato', 'chernobil', 'maloobespech','budget',
        'data_rozhdeniya', 'city', 'street','n_tel',
        'n_group', 'inn', 'pasport','id_stan')
        labels={
        'n_stud':'Номер студента',
        'familiya':'Прізвище',
        'imya':'Ім`я',
        'otchestvo':'По-батькові',
        'sex':'Стать',
        'vpo':'ВПО',
        'sirota':'Сирота',
        'invalid':'Інвалід',
        'ato':'АТО',
        'chernobil':'Чорнобиль',
        'maloobespech':'Малозабезпечений',
        'budget':'Бюджет',
        #'data_rozhdeniya':'Дата народження',
        'city':'Місто',
        'street':'Вулиця',
        #'n_tel':'Номер телефону',
        'n_group':'Номер групи',
        'inn':'ІПН',
        'pasport':'Паспорт',
        #'id_stan':''

        }

        

class PrepodForm(forms.ModelForm):
    class Meta:
        model = Prepod
        fields = ('n_prepod', 'familiya', 'imya','otchestvo','category',
        'data_rozhd','sex')
        labels={
        'n_prepod':'Номер викладача',
        'familiya':'Прізвище',
        'imya':'Ім`я',
        'otchestvo':'По-батькові',
        'category':'Категорія',
        'data_rozhd':'Дата народження',
        'sex':'Стать',}

class SpecForm(forms.ModelForm):
    class Meta:
        model = Specialnost
        fields = ('n_specialnosty', 'abbreviatura', 'polnoe_nazv')
        labels={
        'n_specialnosty':'Номер спеціальності',
        'abbreviatura':'Абревіатура',
        'polnoe_nazv':'Повна назва',
        }