from xml.etree.ElementInclude import include
from django.contrib import admin
from django.urls import path

from belajarpy.employee.views import Index
from . import views


urlpatterns = [
    path('admin/', admin.site.urls),
    path('', Index, name='Index'),
]
