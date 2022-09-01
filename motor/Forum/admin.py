from django.contrib import admin
from Forum.models import *

# Register your models here.;
class MotorAdmin(admin.ModelAdmin):
    list_display = ('id', 'nama', 'merk', 'plat', 'telp', 'email')
admin.site.register(Motor, MotorAdmin)

