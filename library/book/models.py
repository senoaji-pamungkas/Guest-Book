from django.db import models

# Create your models here.
class Book(models.Model):
    judul = models.CharField(max_length=100)
    pengarang = models.CharField(max_length=20)
    penerbit = models.CharField(max_length=20)
    tahun = models.IntegerField

    def __str__(self):
        return self.judul

    class Meta:
        db_table = "book"
