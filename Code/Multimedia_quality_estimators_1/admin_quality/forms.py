

from django import forms
from admin_quality.models import Upload_Model

class Upload_Form(forms.ModelForm):
    class Meta:
        model = Upload_Model
        fields = ('topic','date','uploads',)