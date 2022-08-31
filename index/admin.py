from tkinter.tix import Tree
from django.contrib import admin
from django.shortcuts import redirect
from index.models import *
from django import forms

class TamuAdmin(admin.ModelAdmin):
    list_display = ('id', 'name', 'namaIntansi', 'jaminan', 'keperluan', 'karyawan', 'jumlahTamu', 'foto', 'waktu')

admin.site.register(Tamu, TamuAdmin)


class CustomModelChoiceField(forms.ModelChoiceField):
         def label_from_instance(self, obj):
             return "%s %s" % (obj.first_name, obj.last_name)

class MyKaryawanFormAdmin(forms.ModelForm):
    person = CustomModelChoiceField(queryset=Karyawan.objects.all()) 
    class Meta:
          model = Karyawan
          fields = '__all__'

class KaryawanAdmin(admin.ModelAdmin):
    list_display = ('id', 'name', 'jenisKelamin', 'divisi')
    form: MyKaryawanFormAdmin

admin.site.register(Karyawan, KaryawanAdmin)

