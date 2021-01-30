"""Multimedia_quality_estimators_1 URL Configuration

The `urlpatterns` list routes URLs to views. For more information please see:
    https://docs.djangoproject.com/en/2.1/topics/http/urls/
Examples:
Function views
    1. Add an import:  from my_app import views
    2. Add a URL to urlpatterns:  path('', views.home, name='home')
Class-based views
    1. Add an import:  from other_app.views import Home
    2. Add a URL to urlpatterns:  path('', Home.as_view(), name='home')
Including another URLconf
    1. Import the include() function: from django.urls import include, path
    2. Add a URL to urlpatterns:  path('blog/', include('blog.urls'))
"""
from django.conf.urls import url
from django.contrib import admin
from django.conf import settings
from django.conf.urls.static import static

from user_quality import views as user_view
from admin_quality import views as admin_view

urlpatterns = [
    url('admin/', admin.site.urls),

    url(r'^$', user_view.ulogin_page, name="ulogin_page"),
    url(r'^uregister_page/$', user_view.uregister_page, name="uregister_page"),
    url(r'^umultimedia_page/$', user_view.umultimedia_page, name="umultimedia_page"),
    url(r'^uview_video_page/$', user_view.uview_video_page, name="uview_video_page"),
    url(r'^umydetails_page/$', user_view.umydetails_page, name = "umydetails_page"),
    url(r'^uupdate_page/$', user_view.uupdate_page, name="uupdate_page"),
    url(r'^userrequest/(?P<pk>\d+)/', user_view.userrequest, name="userrequest"),
    url(r'^ulogout_page/$', user_view.ulogout_page, name="ulogout_page"),
    url('^user/otppage/(?P<videos>\d+)$', user_view.otppage, name="otppage"),
    url(r'^udownload/$', user_view.udownload, name="udownload"),
    url(r'^ucharts/(?P<chart_type>\w+)', user_view.ucharts,name="ucharts"),


    url(r'^alogin_page/$', admin_view.alogin_page, name="alogin_page"),
    url(r'^avideo_upload_page/$', admin_view.avideo_upload_page, name="avideo_upload_page"),
    url(r'^viewuserrequest/$', admin_view.viewuserrequest, name="viewuserrequest"),
    url(r'^userrequest/accept/(?P<pk>\d+)/$', admin_view.accept, name="accept"),
    url(r'^userrequest/reject/(?P<pk>\d+)/$', admin_view.reject, name="reject"),
    url(r'^alogout_page/$', admin_view.alogout_page, name="alogout_page"),
    url(r'^charts/(?P<chart_type>\w+)', admin_view.charts,name="charts"),

]+ static(settings.MEDIA_URL, document_root=settings.MEDIA_ROOT)
