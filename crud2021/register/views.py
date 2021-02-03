from django.shortcuts import render, redirect
from .forms import StudForm, PrepodForm

from .models import Spisok_stud, Prepod
# Create your views here.

def main_page(request):
    return render(request, "register/main_page.html")

def stud_list(request):
    context = {'stud_list':Spisok_stud.objects.all()}
    return render(request, "register/stud_list.html", context)

def stud_form(request, id=0):
    if request.method == "GET":
        if id==0:
            form = StudForm()
        else:
            stud= Spisok_stud.objects.get(pk=id)
            form = StudForm(instance=stud)
        return render(request, "register/stud_form.html", {'form':form})
    else:
        form = StudForm(request.POST)
        if form.is_valid():
            form.save()
        return redirect('/stud_list')
def stud_delete(request):
    return




def prepod_list(request):
    return render(request, "register/prepod/prepod_list.html")

def prepod_form(request):
    if request.method == "GET":
        form = PrepodForm()
        return render(request, "register/prepod/prepod_form.html", {'form':form})
    else:
        form = PrepodForm(request.POST)
        if form.is_valid():
            form.save()
        return redirect('/prepod_list')

def prepod_delete(request):
    return