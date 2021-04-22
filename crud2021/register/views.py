from django.shortcuts import render, redirect
from .forms import StudForm, PrepodForm, SpecForm, GroupsForm, PredmetyForm, ItogForm

from .models import Spisok_stud, Prepod, Specialnost, Groups, Predmety, Itog
import csv, io
from django.http import HttpResponse
from itertools import chain
from django.contrib import messages
from django.http import JsonResponse
# Create your views here.

def main_page(request):
    return render(request, "register/main_page.html")


def stud_list(request):
    context = {'stud_list':Spisok_stud.objects.all()}
    return render(request, "register/stud/stud_list.html", context)

def stud_form(request, id=0):
    if request.method == "GET":
        if id==0:
            form = StudForm()
        else:
            stud= Spisok_stud.objects.get(pk=id)
            stud.data_rozhdeniya = stud.data_rozhdeniya.strftime('%d-%m-%Y')
            form = StudForm(instance=stud)
        return render(request, "register/stud/stud_form.html", {'form':form})
    else:
        if id==0:  
            form = StudForm(request.POST)       
        else:
            stud= Spisok_stud.objects.get(pk=id)
            stud.data_rozhdeniya = stud.data_rozhdeniya.strftime('%d-%m-%Y')
            form = StudForm(request.POST,instance=stud)
        if form.is_valid():
            form.save()
        else:
            return render(request, "register/stud/stud_form.html", {'form':form})
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
            prepod.data_rozhd = prepod.data_rozhd.strftime('%d-%m-%Y')
            form = PrepodForm(instance=prepod)
        return render(request, "register/prepod/prepod_form.html", {'form':form})
    else:
        if id==0:
            form = PrepodForm(request.POST)
        else:
            prepod=Prepod.objects.get(pk=id)
            prepod.data_rozhd = prepod.data_rozhd.strftime('%d-%m-%Y')
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

def predmety_list(request):
    context = {'predmety_list':Predmety.objects.all()}
    return render(request, "register/predmety/predmety_list.html", context)

def predmety_form(request,id=0):
    if request.method == "GET":
        if id==0:
            form = PredmetyForm()
        else:
            predmety=Predmety.objects.get(pk=id)
            form = PredmetyForm(instance=predmety)
        return render(request, "register/predmety/predmety_form.html", {'form':form})
    else:
        if id==0:
            form = PredmetyForm(request.POST)
        else:
            predmety=Predmety.objects.get(pk=id)
            form = PredmetyForm(request.POST,instance=predmety)
        if form.is_valid():
            form.save()
        return redirect('/predmety_list')

def predmety_delete(request,id):
    predmety=Predmety.objects.get(pk=id)
    predmety.delete()
    return redirect('/predmety_list')


def itog_list(request):
    context = {'itog_list':Itog.objects.all()}
    return render(request, "register/itog/itog_list.html", context)

def itog_form(request,id=0):
    if request.method == "GET":
        if id==0:
            form = ItogForm()
        else:
            itog=Itog.objects.get(pk=id)
            form = ItogForm(instance=itog)
        return render(request, "register/itog/itog_form.html", {'form':form})
    else:
        if id==0:
            form = ItogForm(request.POST)
        else:
            itog=Itog.objects.get(pk=id)
            form = ItogForm(request.POST,instance=itog)
        if form.is_valid():
            form.save()
        return redirect('/itog_list')

def itog_delete(request,id):
    itog=Itog.objects.get(pk=id)
    itog.delete()
    return redirect('/itog_list')

def spec_csv(request):
    response = HttpResponse(content_type='text/csv')
    writer = csv.writer(response)
    writer.writerow(['Абревіатура','Номер спеціальності', 'Повна назва'])
    records = Specialnost.objects.all().values_list('abbreviatura','n_specialnosty', 'polnoe_nazv')
    for record in records:
        writer.writerow(record)
    response['Content-Disposition'] = 'attachment; filename="db_spec.csv"' # your filename
    return response

def modal(request):
    return render(request, "register/modal.html")    

def spec_upload(request):
    template = "register/specialnost/spec_list.html"
    csv_file = request.FILES['file']
    if not csv_file.name.endswith('.csv'):
        return JsonResponse({
            'err_code': 1,
            'err_message': 'Це не csv-файл' 
        }) 
    else:
        data_set = csv_file.read().decode('UTF-8')
        io_string = io.StringIO(data_set)
        next(io_string)
        try:
            for column in csv.reader(io_string, delimiter=',', quotechar="|"):
                _, created = Specialnost.objects.update_or_create(
                    abbreviatura=column[0],
                    n_specialnosty=column[1],
                    polnoe_nazv=column[2]
                )
        except:
            return JsonResponse({
                'err_code': 1,
                'err_message': 'Перевірте коректність заповнених даних' 
                })
    context = {}
    return render(request, template, context)

def groups_csv(request):
    response = HttpResponse(content_type='text/csv')
    writer = csv.writer(response)
    writer.writerow(['Назва групи','Номер спеціальності', 'Курс', 'Форма навчання'])
    records = Groups.objects.all().values_list('nazvanie','n_specialnosty', 'kurs', 'forma')
    for record in records:
        writer.writerow(record)
    response['Content-Disposition'] = 'attachment; filename="db_groups.csv"' # your filename
    return response

def groups_upload(request):
    template = "register/groups/groups_list.html"
    csv_file = request.FILES['file']
    if not csv_file.name.endswith('.csv'):
        return JsonResponse({
            'err_code': 1,
            'err_message': 'Це не csv-файл' 
        })  
    else:
        data_set = csv_file.read().decode('UTF-8')
        io_string = io.StringIO(data_set)
        next(io_string)
        try:
            for column in csv.reader(io_string, delimiter=',', quotechar="|"):
                _, created = Groups.objects.update_or_create(
                    nazvanie=column[0],
                    n_specialnosty=Specialnost.objects.get(id=int(column[1])),
                    kurs=column[2],
                    forma=column[3]
                )
        except:
            return JsonResponse({
                'err_code': 1,
                'err_message': 'Перевірте коректність заповнених даних' 
                })
    context = {}
    return render(request, template, context)
 
def stud_csv(request):
    response = HttpResponse(content_type='text/csv')
    writer = csv.writer(response)
    writer.writerow(['Прізвище','Імʼя', 'По-батькові', 'Стать', 'ВПО', 'Сирота', 'Інвалід', 'АТО', 'Чорнобиль', 'Малозабезпечений', 'Бюджет', 'Дата народження', 'Місто', 'Вулиця', 'Номер телефону', 'Номер групи', 'ІПН', 'Паспорт', 'Стан студента'])
    records = Spisok_stud.objects.all().values_list('familiya','imya', 'otchestvo', 'sex', 'vpo', 'sirota', 'invalid', 'ato', 'chernobil', 'maloobespech', 'budget', 'data_rozhdeniya', 'city', 'street', 'n_tel', 'n_group', 'inn', 'pasport', 'id_stan')
 
    for record in records:
        writer.writerow(record)

    response['Content-Disposition'] = 'attachment; filename="db_stud.csv"' # your filename
    return response

def stud_upload(request):
    template = "register/stud/stud_list.html"
    csv_file = request.FILES['file']
    if not csv_file.name.endswith('.csv'):
        return JsonResponse({
            'err_code': 1,
            'err_message': 'Це не csv-файл' 
        })       
    else:
        data_set = csv_file.read().decode('UTF-8')
        io_string = io.StringIO(data_set)
        next(io_string)
        try:
            for column in csv.reader(io_string, delimiter=',', quotechar="|"):
                _, created = Spisok_stud.objects.update_or_create(
                    familiya=column[0],
                    imya=column[1],
                    otchestvo=column[2],
                    sex=column[3],
                    vpo=column[4],
                    sirota=column[5],
                    invalid=column[6],
                    ato=column[7],
                    chernobil=column[8],
                    maloobespech=column[9],
                    budget=column[10],
                    data_rozhdeniya=column[11],
                    city=column[12],
                    street=column[13],
                    n_tel=column[14],
                    n_group=Groups.objects.get(id=int(column[15])),
                    inn=column[16],
                    pasport=column[17],
                    id_stan=column[18]
                )
        except:
            return JsonResponse({
                'err_code': 1,
                'err_message': 'Перевірте коректність заповнених даних' 
                })
    context = {}
    return render(request, template, context)

def prepod_csv(request):
    response = HttpResponse(content_type='text/csv')
    writer = csv.writer(response)
    writer.writerow(['Прізвище','Імʼя', 'По-батькові', 'Категорія', 'Дата народження', 'Стать'])
    records = Prepod.objects.all().values_list('familiya','imya', 'otchestvo', 'category', 'data_rozhd', 'sex')
    for record in records:
        writer.writerow(record)
    response['Content-Disposition'] = 'attachment; filename="db_prepod.csv"' # your filename
    return response

def prepod_upload(request):
    template = "register/prepod/prepod_list.html"
    csv_file = request.FILES['file']
    if not csv_file.name.endswith('.csv'):
        return JsonResponse({
            'err_code': 1,
            'err_message': 'Це не csv-файл' 
        })   
    else:
        data_set = csv_file.read().decode('UTF-8')
        io_string = io.StringIO(data_set)
        next(io_string)
        try:
            for column in csv.reader(io_string, delimiter=',', quotechar="|"):
                _, created = Prepod.objects.update_or_create(
                    familiya=column[0],
                    imya=column[1],
                    otchestvo=column[2],
                    category=column[3],
                    data_rozhd=column[4],
                    sex=column[5]
                )
        except:
            return JsonResponse({
                'err_code': 1,
                'err_message': 'Перевірте коректність заповнених даних' 
                })
    context = {}
    return render(request, template, context)

def predmety_csv(request):
    response = HttpResponse(content_type='text/csv')
    writer = csv.writer(response)
    writer.writerow(['Назва предмету', 'Спеціальність'])
    records = Predmety.objects.all().values_list('nazv_predmeta','specialnost')
    for record in records:
        writer.writerow(record)
    response['Content-Disposition'] = 'attachment; filename="db_predmety.csv"' # your filename
    return response

def predmety_upload(request):
    template = "register/predmety/predmety_list.html"
    csv_file = request.FILES['file']
    if not csv_file.name.endswith('.csv'):
        return JsonResponse({
            'err_code': 1,
            'err_message': 'Це не csv-файл' 
        }) 
    else:
        data_set = csv_file.read().decode('UTF-8')
        io_string = io.StringIO(data_set)
        next(io_string)
        try:
            for column in csv.reader(io_string, delimiter=',', quotechar="|"):
                _, created = Predmety.objects.update_or_create(
                    nazv_predmeta=column[0],
                    specialnost=Specialnost.objects.get(id=int(column[1]))
                )
        except:
            return JsonResponse({
                'err_code': 1,
                'err_message': 'Перевірте коректність заповнених даних' 
                })
    context = {}
    return render(request, template, context)

def itog_csv(request):
    response = HttpResponse(content_type='text/csv')
    writer = csv.writer(response)
    writer.writerow(['Студент','Предмет', 'Викладач', 'Оцінка'])
    records = Itog.objects.all().values_list('n_stud','n_predmeta', 'n_prepod', 'otsenka')
    for record in records:
        writer.writerow(record)
    response['Content-Disposition'] = 'attachment; filename="db_itog.csv"' # your filename
    return response

def itog_upload(request):
    template = "register/itog/itog_list.html"
    csv_file = request.FILES['file']
    if not csv_file.name.endswith('.csv'):
        return JsonResponse({
            'err_code': 1,
            'err_message': 'Це не csv-файл' 
        }) 
    else:
        data_set = csv_file.read().decode('UTF-8')
        io_string = io.StringIO(data_set)
        next(io_string)
        try:
            for column in csv.reader(io_string, delimiter=',', quotechar="|"):
                _, created = Itog.objects.update_or_create(
                    n_stud=Spisok_stud.objects.get(id=int(column[0])),
                    n_predmeta=Predmety.objects.get(id=int(column[1])),
                    n_prepod=Prepod.objects.get(id=int(column[2])),
                    otsenka=column[3]
                )
        except:
            return JsonResponse({
                'err_code': 1,
                'err_message': 'Перевірте коректність заповнених даних' 
                })
    context = {}
    return render(request, template, context)