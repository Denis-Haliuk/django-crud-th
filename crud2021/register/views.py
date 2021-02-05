from django.shortcuts import render, redirect
from .forms import StudForm, PrepodForm, SpecForm, GroupsForm

from .models import Spisok_stud, Prepod, Specialnost, Groups
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
        if id==0:  
            form = StudForm(request.POST)       
        else:
            stud= Spisok_stud.objects.get(pk=id)
            form = StudForm(request.POST,instance=stud)
        if form.is_valid():
            form.save()
        else:
            return render(request, "register/stud_form.html", {'form':form})
        return redirect('/stud_list')

def stud_delete(request,id):
    stud= Spisok_stud.objects.get(pk=id)
    stud.delete()
    return redirect('/stud_list')




def prepod_list(request):
    context = {'prepod_list':Prepod.objects.all()}
    return render(request, "register/prepod/prepod_list.html", context)

def prepod_form(request,id=0):
    if request.method == "GET":
        if id==0:
            form = PrepodForm()
        else:
            prepod=Prepod.objects.get(pk=id)
            form = PrepodForm(instance=prepod)
        return render(request, "register/prepod/prepod_form.html", {'form':form})
    else:
        if id==0:
            form = PrepodForm(request.POST)
        else:
            prepod=Prepod.objects.get(pk=id)
            form = PrepodForm(request.POST,instance=prepod)
        if form.is_valid():
            form.save()
        return redirect('/prepod_list')

def prepod_delete(request,id):
    prepod=Prepod.objects.get(pk=id)
    prepod.delete()
    return redirect('/prepod_list')



def spec_list(request):
    context = {'spec_list':Specialnost.objects.all()}
    return render(request, "register/specialnost/spec_list.html", context)

def spec_form(request,id=0):
    if request.method == "GET":
        if id==0:
            form = SpecForm()
        else:
            spec=Specialnost.objects.get(pk=id)
            form = SpecForm(instance=spec)
        return render(request, "register/specialnost/spec_form.html", {'form':form})
    else:
        if id==0:
            form = SpecForm(request.POST)
        else:
            spec=Specialnost.objects.get(pk=id)
            form = SpecForm(request.POST,instance=spec)
        if form.is_valid():
            form.save()
        return redirect('/spec_list')

def spec_delete(request,id):
    spec=Specialnost.objects.get(pk=id)
    spec.delete()
    return redirect('/spec_list')



def groups_list(request):
    context = {'groups_list':Groups.objects.all()}
    return render(request, "register/groups/groups_list.html", context)

def groups_form(request,id=0):
    if request.method == "GET":
        if id==0:
            form = GroupsForm()
        else:
            groups=Groups.objects.get(pk=id)
            form = GroupsForm(instance=groups)
        return render(request, "register/groups/groups_form.html", {'form':form})
    else:
        if id==0:
            form = GroupsForm(request.POST)
        else:
            groups=Groups.objects.get(pk=id)
            form = GroupsForm(request.POST,instance=groups)
        if form.is_valid():
            form.save()
        return redirect('/groups_list')

def groups_delete(request,id):
    groups=Groups.objects.get(pk=id)
    groups.delete()
    return redirect('/groups_list')