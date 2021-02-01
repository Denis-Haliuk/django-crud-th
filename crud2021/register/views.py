from django.shortcuts import render
from .forms import StudForm
# Create your views here.

def stud_list(request):
    return render(request, "register/stud_list.html")
def stud_form(request):
    form = StudForm()
    return render(request, "register/stud_form.html", {'form':form})
def stud_delete(request):
    return