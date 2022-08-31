from xml.dom.minidom import Document
from xml.etree.ElementInclude import include
from django.conf import settings
from django.conf.urls.static import static
from django.contrib import admin
from django.urls import path
from index.views import *

urlpatterns = [
    path('admin/', admin.site.urls),
    path('create', Create, name='create'),
    path('', Index, name='index'),
]

if settings.DEBUG:
    urlpatterns += static(settings.MEDIA_URL,
document_root=settings.MEDIA_ROOT)
