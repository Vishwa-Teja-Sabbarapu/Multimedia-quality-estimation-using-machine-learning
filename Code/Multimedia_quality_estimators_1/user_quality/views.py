from random import randint

from django.core.mail import EmailMultiAlternatives
from django.db.models import Count
from django.shortcuts import render, redirect, get_object_or_404

from django.contrib.auth import logout


# Create your views here.
from Multimedia_quality_estimators_1.settings import DEFAULT_FROM_EMAIL
from admin_quality.forms import Upload_Form
from admin_quality.models import Upload_Model
from user_quality.models import RegistrationModel, UserRequestmodel, OtpModel


def ulogin_page(request):
    if request.method == "POST":
        name = request.POST.get("nme")
        password = request.POST.get("pwd")
        try:
            check = RegistrationModel.objects.get(name=name,password=password)
            request.session['name']= check.id

            return redirect('umydetails_page')
        except:
            pass
    return render(request,'user/ulogin_page.html')

def uregister_page(request):
    if request.method == "POST":
        nme = request.POST.get('name')
        eml = request.POST.get('email')
        pwd = request.POST.get('password')
        pne = request.POST.get('phoneno')

        RegistrationModel.objects.create(name=nme,email=eml,password=pwd,phoneno=pne)


    return render(request,'user/uregister_page.html')

def umultimedia_page(request):
    return render(request, 'user/umultimedia_page.html')

def uview_video_page(request):
    sts = 'pending'
    sent = 'sent'
    if request.method == "POST":
        uid = request.session['name']
        request_obj = RegistrationModel.objects.get(id=uid)
        subject = "OTP"
        text_content = ""
        otp = randint(1000, 9999)
        request.session['otp'] = otp
        html_content = "<br/><p>OTP :<strong>" + str(otp) + "</strong></p>"
        from_mail = DEFAULT_FROM_EMAIL
        to_mail = [request_obj.email]
        # if send_mail(subject,message,from_mail,to_mail):
        msg = EmailMultiAlternatives(subject, text_content, from_mail, to_mail)
        msg.attach_alternative(html_content, "text/html")
        if msg.send():
            sts = 'sent'
            # return redirect('otppage',lawer=userObj.id)

    obj = Upload_Model.objects.all()
    return render(request,'user/uview_video_page.html',{'list_object':obj,'sts':sts,'sent':sent})
def otppage(request,videos):
    password = request.session['otp']
    sts="c"
    pas = int(password)
    if request.method == "POST":
        onetime = request.POST.get('otp','')
        if (int(password)==int(onetime)):
            uid = request.session['name']
            request_obj = RegistrationModel.objects.get(id=uid)
            adObj = Upload_Model.objects.get(id=videos)
            OtpModel.objects.create(regid=request_obj,reqid=adObj)
            return redirect('uview_video_page')
        else:
            sts="Please Enter Correct OTP"
    return render(request,'user/otppage.html',{'password':pas,'sts':sts})


def umydetails_page(request):
    name = request.session["name"]
    obj1 = RegistrationModel.objects.get(id=name)
    if request.method == "POST":
        Name = request.POST.get('name', '')
        Email = request.POST.get('email', '')
        Password = request.POST.get('password', '')
        PhoneNo = request.POST.get('phoneno', '')

        obj1 = get_object_or_404(RegistrationModel, id=name)
        obj1.name = Name
        obj1.email = Email
        obj1.password = Password
        obj1.phoneno = PhoneNo
    return render(request,'user/umydetails_page.html', {'obje':obj1})




def uupdate_page(request):
    name = request.session['name']
    obj = RegistrationModel.objects.get(id = name)
    if request.method == "POST":
        Name = request.POST.get('name')
        Email = request.POST.get('email')
        Password = request.POST.get('password')
        PhoneNo = request.POST.get('phoneno')

        obj = get_object_or_404(RegistrationModel, id= name)
        obj.name = Name
        obj.email = Email
        obj.password = Password
        obj.phoneno = PhoneNo
        obj.save(update_fields=["name","email","password","phoneno"])

    return render(request,'user/uupdate_page.html',{'objc':obj})

def ulogout_page(request):

    return redirect('ulogin_page')


def userrequest(request,pk):
    name = request.session['name']
    userObj = RegistrationModel.objects.get(id=name)
    gymObj = Upload_Model.objects.get(id=pk)
    UserRequestmodel.objects.create(userId=userObj,quality=gymObj)
    return redirect('uview_video_page')

def udownload(request):
    obj= OtpModel.objects.all()
    return render(request,'user/udownload.html',{'objects':obj})

def ucharts(request,chart_type):
    chart = Upload_Model.objects.values('topic').annotate(dcount=Count('topic'))

    return render(request,"user/ucharts.html", {'form':chart, 'chart_type':chart_type})