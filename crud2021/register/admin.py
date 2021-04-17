from django.contrib import admin
from .models import Spisok_stud, Prepod, Specialnost, Groups, Predmety, Itog

# Register your models here.
admin.site.register(Spisok_stud)
admin.site.register(Prepod)
admin.site.register(Specialnost)
admin.site.register(Groups)
admin.site.register(Predmety)
admin.site.register(Itog)
