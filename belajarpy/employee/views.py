from django.shortcuts import redirect, render
from .models import Employee
# Create your views here.


def Index(request):
    return render(request, "index.html")

def create(request):
    if request.method=="POST":
        name=request.POST['name']
        email=request.POST['email']
        contact=request.POST['contact']
        obj=Employee.objects.create(name=name, email=email, contact=contact)
        obj.save()
    return redirect('/')
