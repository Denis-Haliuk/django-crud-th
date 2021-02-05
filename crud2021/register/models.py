from django.db import models
from datetime import date
# Create your models here.


#удалить все n_... и вместо них выводить id из postgres
class Specialnost(models.Model):
    n_specialnosty = models.IntegerField()
    abbreviatura = models.CharField(max_length=100)
    polnoe_nazv = models.CharField(max_length=100) #func?


class Groups(models.Model):
    n_group = models.IntegerField()
    nazvanie = models.CharField(max_length=100)
    n_specialnosty = models.ForeignKey(Specialnost, on_delete=models.CASCADE) #разобраться
    kurs = models.IntegerField()
    day='дневная'
    zaoch='заочная'
    FORM_CHOICES=[
        (day,'дневная'),
        (zaoch, 'заочная'),
    ]
    forma = models.CharField(max_length=7, choices=FORM_CHOICES, default=day)

    def __str__(self):
        return self.nazvanie

class Spisok_stud(models.Model):
    n_stud = models.IntegerField()
    familiya = models.CharField(max_length=100)
    imya = models.CharField(max_length=100)
    otchestvo = models.CharField(max_length=100)
    m='м'
    f='ж'
    SEX_CHOICES=[
        (m,'муж'),
        (f, 'жен'),
    ]
    sex = models.CharField(max_length=1, choices=SEX_CHOICES, default=m)
    vpo = models.BooleanField()
    sirota = models.BooleanField()
    invalid = models.BooleanField()
    ato = models.BooleanField()
    chernobil = models.BooleanField()
    maloobespech = models.BooleanField()
    budget = models.BooleanField()
    data_rozhdeniya = models.DateField(default=date.today)
    city = models.CharField(max_length=100)
    street = models.CharField(max_length=100)
    n_tel = models.CharField(max_length=13)
    n_group = models.ForeignKey(Groups, on_delete=models.CASCADE) #разобраться
    inn = models.CharField(max_length=100)
    pasport = models.CharField(max_length=100)
    id_stan = models.CharField(max_length=100)

class Predmety(models.Model):
    n_predmeta = models.IntegerField()
    nazv_predmeta = models.CharField(max_length=100)
    specialnost = models.ForeignKey(Specialnost, on_delete=models.CASCADE) #разобраться

class Prepod(models.Model):
    n_prepod = models.IntegerField()
    familiya = models.CharField(max_length=100)
    imya = models.CharField(max_length=100)
    otchestvo = models.CharField(max_length=100)
    category = models.CharField(max_length=100)
    data_rozhd = models.DateField(default=date.today)
    m='м'
    f='ж'
    SEX_CHOICES=[
        (m,'муж'),
        (f, 'жен'),
    ]
    sex = models.CharField(max_length=1, choices=SEX_CHOICES, default=m)

class Itog(models.Model):
    n_itoga = models.IntegerField()
    n_stud = models.IntegerField()
    n_predmeta = models.IntegerField()
    n_prepod = models.IntegerField()
    otsenka = models.IntegerField()
