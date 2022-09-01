from django.db import models

class Motor(models.Model):
    nama = models.CharField(max_length=100)
    merk = models.CharField(max_length=100)
    plat = models.IntegerField()
    telp = models.CharField(max_length=13)
    email = models.EmailField(max_length=100)
    
    def __str__(self):
        return self.nama
    class Meta:
        db_table = "motor"