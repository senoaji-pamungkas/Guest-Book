from django.shortcuts import render, redirect
from .models import mahasiswa

# Create your views here.
def Index(request):
    return render(request, "index.html")

def create(request):
    if request.mothod=="POST":
        nik=request.POST['nik']
        nama=request.POST['nama']
        hobi=request.POST['hobi']
        alamat=request.POST['alamat']
        obj=mahasiswa.objects.create(nik=nik, nama=nama, hobi=hobi, alamat=alamat)
        obj.save()
    return redirect('/')