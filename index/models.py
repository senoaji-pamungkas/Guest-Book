from email.policy import default
from secrets import choice
from tkinter import CASCADE
from tokenize import *
from unittest import case
from django.db import models
from enum import Enum
from django.utils.safestring import mark_safe
from django.utils.html import format_html


# Create your models here.


class Karyawan(models.Model):
    P = 'Pria'
    W = 'Wanita'

    choice = (
        (P, P),
        (W, W),
    )
    
    IT = 'IT'
    PM = 'PEMASARAN'
    PR = 'PRODUKSI'

    divisi = (
        (IT, IT),
        (PM, PM),
        (PR, PR),
    )

    name = models.CharField(max_length=100)
    jenisKelamin = models.CharField(max_length=10, choices=choice, default=P)
    divisi = models.CharField(max_length=20, choices=divisi, default=IT)

    def __str__(self):
        return self.name

    class Meta:
        db_table = "karyawan"
        verbose_name = "Employee'"

class Tamu(models.Model):
    name = models.CharField(max_length=100)
    namaIntansi = models.CharField(max_length=100)
    jaminan = models.CharField(max_length=100)
    keperluan = models.CharField(max_length=100)
    karyawan = models.ForeignKey(Karyawan, on_delete=models.CASCADE, verbose_name="karyawan_id")
    jumlahTamu = models.IntegerField()
    foto = models.ImageField(max_length=100, null=True, default=False)
    waktu = models.DateTimeField(auto_now_add=True, null=False)

    def __str__(self):
        return self.name

    class Meta:
        db_table = "tamu"
        verbose_name = "Guest"