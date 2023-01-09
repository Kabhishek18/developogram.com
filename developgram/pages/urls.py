from django.urls import path,include
from . import views
urlpatterns = [
    path('', views.index,name='home'),
    path('code', views.code,name='code'),
    path('blog', views.blog,name='blog'),
    path('blog/<slug:slug>', views.blogdetail),
    path('contact', views.contact,name='contact'),
   
]