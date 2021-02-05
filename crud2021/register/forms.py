from django import forms
from django.core.exceptions import ValidationError
from django.db.models.fields import DateField
from .models import Spisok_stud, Prepod, Specialnost, Groups, Predmety, Itog
from django.conf import settings

class StudForm(forms.ModelForm):
    data_rozhdeniya = forms.DateField(
        input_formats=settings.DATE_INPUT_FORMATS, 
        label='Дата народження',
        help_text='Приклад: 18-08-2000', 
        widget=forms.TextInput(attrs={'data-mask':"00-00-0000", 'placeholder':"__-__-___",},)
        )

    n_tel = forms.CharField(label='Номер телефону', 
    widget=forms.TextInput(attrs={'input id':"phone", 'placeholder':"+38(___)_______"}),)
    class Meta:
        model = Spisok_stud
        fields = ('id', 'familiya', 'imya','otchestvo',
        'sex', 'vpo', 'sirota','invalid',
        'ato', 'chernobil', 'maloobespech','budget',
        'data_rozhdeniya', 'city', 'street','n_tel',
        'n_group', 'inn', 'pasport','id_stan')
        labels={
        'id':'Номер студента',
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
        'n_group':'Група',
        'inn':'ІПН',
        'pasport':'Паспорт',
        #'id_stan':''

        }

class PrepodForm(forms.ModelForm):
    data_rozhd = forms.DateField(
            input_formats=settings.DATE_INPUT_FORMATS, 
            label='Дата народження',
            help_text='Приклад: 18-08-2000', 
            widget=forms.TextInput(attrs={'data-mask':"00-00-0000", 'placeholder':"__-__-___",},)
            )                
    class Meta:
        model = Prepod
        fields = ('id', 'familiya', 'imya','otchestvo','category',
        'data_rozhd','sex')
        labels={
        'id':'Номер викладача',
        'familiya':'Прізвище',
        'imya':'Ім`я',
        'otchestvo':'По-батькові',
        'category':'Категорія',
        'sex':'Стать',}

class SpecForm(forms.ModelForm):
    class Meta:
        model = Specialnost
        fields = ('id', 'n_specialnosty','abbreviatura', 'polnoe_nazv')
        labels={
        'id':'Номер запису',
        'n_specialnosty':'Номер спеціальності',
        'abbreviatura':'Абревіатура',
        'polnoe_nazv':'Повна назва',
        }

class GroupsForm(forms.ModelForm):
    class Meta:
        model = Groups
        fields = ('id', 'nazvanie', 'n_specialnosty',
        'kurs', 'forma')
        labels={
        'id':'Номер групи',
        'nazvanie':'Назва групи',
        'n_specialnosty':'Номер спеціальності',
        'kurs':'Курс',
        'forma':'Форма навчання',
        }

class PredmetyForm(forms.ModelForm):
    class Meta:
        model = Predmety
        fields = ('id', 'nazv_predmeta','specialnost')
        labels={
        'id':'Номер запису',
        'nazv_predmeta':'Назва предмету',
        'specialnost':'Спеціальність'
        }


class ItogForm(forms.ModelForm):
    class Meta:
        model = Itog
        fields = ('id', 'n_stud','n_predmeta','n_prepod','otsenka')
        labels={
        'id':'Номер запису',
        'n_stud':'Студент',
        'n_predmeta':'Предмет',
        'n_prepod':'Викладач',
        'otsenka':'Оцінка',
        }
        