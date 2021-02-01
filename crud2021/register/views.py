from django.shortcuts import render
from .forms import StudForm, PrepodForm
# Create your views here.

def stud_list(request):
    return render(request, "register/stud_list.html")

def stud_form(request):
    form = StudForm()
    return render(request, "register/stud_form.html", {'form':form})
    
def stud_delete(request):
    return

def prepod_list(request):
    return render(request, "register/prepod/prepod_list.html")

def prepod_form(request):
    form = PrepodForm()
    return render(request, "register/prepod/prepod_form.html", {'form':form})

def prepod_delete(request):
    return