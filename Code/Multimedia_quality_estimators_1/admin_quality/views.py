from django.db.models import Count
from django.shortcuts import render, redirect


# Create your views here.
from admin_quality.forms import Upload_Form
from admin_quality.models import Upload_Model
from user_quality.models import UserRequestmodel, OtpModel


def alogin_page(request):
    if request.method == "POST":
        admin = request.POST.get('name')
        password = request.POST.get('password')
        if admin == "admin" and password == "admin":
            return redirect('avideo_upload_page')

    return render(request,'admin/alogin_page.html')


def avideo_upload_page(request):
    if request.method == "POST":
        form = Upload_Form(request.POST or None, request.FILES)
        if form.is_valid():
            form.save()
            return redirect('avideo_upload_page')
    else:
        form = Upload_Form()
    return render(request,'admin/avideo_upload_page.html',{'form':form})

def viewuserrequest(request):
    obj=OtpModel.objects.all()
    return render(request,'admin/viewuserrequest.html',{'objects':obj})

def accept(request,pk):
    obj = OtpModel.objects.get(id=pk)
    obj.reqstatus = "accept"
    obj.save(update_fields=["reqstatus"])
    return redirect('viewuserrequest')

def reject(request,pk):
    obj = OtpModel.objects.get(id=pk)
    obj.reqstatus = "reject"
    obj.save(update_fields=["reqstatus"])
    return redirect('viewuserrequest')

def alogout_page(request):
    return redirect('alogin_page')

def charts(request,chart_type):
    chart = Upload_Model.objects.values('topic').annotate(dcount=Count('topic'))

    return render(request,"admin/charts.html", {'form':chart, 'chart_type':chart_type})