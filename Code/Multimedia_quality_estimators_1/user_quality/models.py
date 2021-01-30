from tkinter import CASCADE

from django.db import models

# Create your models here.
from admin_quality.models import Upload_Model


class RegistrationModel(models.Model):
    name = models.CharField(max_length=200)
    email = models.EmailField(max_length=200)
    password = models.CharField(max_length=100)
    phoneno = models.CharField(max_length=100)

class UserRequestmodel(models.Model):
    userId=models.ForeignKey(RegistrationModel)
    quality= models.ForeignKey(Upload_Model)
    requeststatus=models.CharField(default='pending',max_length=500)

class OtpModel(models.Model):
    regid=models.ForeignKey(RegistrationModel)
    reqid=models.ForeignKey(Upload_Model)
    reqstatus=models.CharField(default='pending',max_length=100)