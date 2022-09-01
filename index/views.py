from unicodedata import name
from .models import Karyawan, Tamu
from django.shortcuts import render, redirect

# Create your views here.
def Index(request):
    users = Karyawan.objects.all()
    return render(request, "index.html", {
        'karyawan': users
    })

def Create(request):
    tamu = Tamu()
    if request.method=="POST":
        tamu.name=request.POST.get('name')
        tamu.namaIntansi=request.POST.get('namaInstansi')
        tamu.jaminan=request.POST.get('jaminan')
        tamu.keperluan=request.POST.get('keperluan')
        tamu.karyawan=Karyawan.objects.get(name=request.POST.get('karyawan'))
        tamu.jumlahTamu=request.POST.get('jumlahTamu')
        tamu.foto=request.FILES.get('foto')
        tamu.save()
    return redirect('/')