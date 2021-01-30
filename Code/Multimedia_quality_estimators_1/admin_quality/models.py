from django.db import models

# Create your models here.
class Upload_Model(models.Model):
    topic = models.CharField(max_length=100)
    date = models.CharField(max_length=100)
    uploads = models.FileField()
