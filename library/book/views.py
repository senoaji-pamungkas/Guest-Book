from django.shortcuts import render, redirect
from .models import Book

# Create your views here.
def Index(request):
    return render(request, "index.html")

def create(request):
    if request.method=="POST":
        judul=request.POST['judul']
        pengarang=request.POST['pengarang']
        penerbit=request.POST['penerbit']
        obj=Book.create(judul=judul, pengarang=pengarang, penerbit=penerbit)
        obj.save()
    return redirect('/')