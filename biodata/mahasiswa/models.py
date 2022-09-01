from operator import length_hint
from django.db import models

# Create your models here.
class mahasiswa(models.Model):
    nik=models.IntegerField()
    nama=models.CharField(max_length=255)
    hobi=models.CharField(max_length=255)
    alamat=models.CharField(max_length=255)

    def __str__(self):
        return self.nama
    class Meta:
        db_table = "mahasiswa"