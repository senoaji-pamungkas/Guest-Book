from django.contrib import admin
from .models import *


class MahasiswaAdmin(admin.ModelAdmin):
    list_display = ('id', 'nik', 'nama', 'hobi', 'alamat')

admin.site.register(mahasiswa, MahasiswaAdmin)