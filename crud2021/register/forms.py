from django import forms
from .models import Spisok_stud, Prepod

class StudForm(forms.ModelForm):
    class Meta:
        model = Spisok_stud
        fields = '__all__'

class PrepodForm(forms.ModelForm):
    class Meta:
        model = Prepod
        fields ='__all__'