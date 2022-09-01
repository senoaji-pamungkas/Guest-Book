from django.shortcuts import redirect, render
from .models import Motor

# Create your views here.
def Index(request):
    return render(request, "index.html")

def create(request):
    if request.method=="POST":
        nama=request.POST['nama']
        merk=request.POST['merk']
        plat=request.POST['plat']
        telp=request.POST['telp']
        email=request.POST['email']
        obj=Motor.objects.create(nama=nama, merk=merk, plat=plat, telp=telp, email=email)
        obj.save()
    return redirect('/')