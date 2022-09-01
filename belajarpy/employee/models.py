from django.db import models

# Create your models here.
class Employee(models.Model):
    name = models.CharField(max_length=100)
    email = models.EmailField(max_length=100)
    contact = models.CharField(max_length=15)
    
    def __str__(self):
        return self.name

    class Meta:
        db_table = "Employee"

#toko sepatu