from django.db import models
from datetime import date
# Create your models here.


#удалить все n_... и вместо них выводить id из postgres
class Specialnost(models.Model):
    abbreviatura = models.CharField(max_length=100, unique=True)
    n_specialnosty = models.CharField(max_length=5)
    polnoe_nazv = models.CharField(max_length=100) #func?

    def __str__(self):
        return self.n_specialnosty
   

class Groups(models.Model):
    #n_group = models.IntegerField()
    nazvanie = models.CharField(max_length=100)
    n_specialnosty = models.ForeignKey(Specialnost, on_delete=models.CASCADE) #разобраться
    kurs = models.IntegerField()
    day='Денна'
    zaoch='Заочна'
    FORM_CHOICES=[
        (day,'Денна'),
        (zaoch, 'Заочна'),
    ]
    forma = models.CharField(max_length=7, choices=FORM_CHOICES, default=day)

    def __str__(self):
        return self.nazvanie

class Spisok_stud(models.Model):
    #n_stud = models.IntegerField()
    familiya = models.CharField(max_length=100)
    imya = models.CharField(max_length=100)
    otchestvo = models.CharField(max_length=100)
    m='Чол'
    f='Жін'
    SEX_CHOICES=[
        (m,'Чол'),
        (f, 'Жін'),
    ]
    sex = models.CharField(max_length=3, choices=SEX_CHOICES, default=m)
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
    #id_stan = models.CharField(max_length=100)
    n='Навчається'
    v='Відраховано'
    z='Завершив навчання'
    STAN_CHOICES=[
        (n,'Навчається'),
        (v, 'Відраховано'),
        (z, 'Завершив навчання'),
    ]
    id_stan = models.CharField(max_length=20, choices=STAN_CHOICES, default=n)

    def __str__(self):
        return self.familiya

class Predmety(models.Model):
    nazv_predmeta = models.CharField(max_length=100)
    specialnost = models.ForeignKey(Specialnost, on_delete=models.CASCADE) #разобраться
    
    def __str__(self):
        return "%s %s" % (self.nazv_predmeta, self.specialnost)


class Prepod(models.Model):
    #n_prepod = models.IntegerField()
    familiya = models.CharField(max_length=100)
    imya = models.CharField(max_length=100)
    otchestvo = models.CharField(max_length=100)
    category = models.CharField(max_length=100)
    data_rozhd = models.DateField(default=date.today)
    m='Чол'
    f='Жін'
    SEX_CHOICES=[
        (m,'Чол'),
        (f, 'Жін'),
    ]
    sex = models.CharField(max_length=3, choices=SEX_CHOICES, default=m)

    def __str__(self):
        return self.familiya

class Itog(models.Model):
   #n_itoga = models.IntegerField()
    n_stud = models.ForeignKey(Spisok_stud, on_delete=models.CASCADE)
    n_predmeta = models.ForeignKey(Predmety, on_delete=models.CASCADE)
    n_prepod = models.ForeignKey(Prepod, on_delete=models.CASCADE)
    otsenka = models.IntegerField()
