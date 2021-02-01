from django import forms
from .models import Spisok_stud

class StudForm(forms.ModelForm):
    class Meta:
        model = Spisok_stud
        fields = '__all__'