from django.shortcuts import render
from django.http import HttpResponse
from django.template import Context, Template
from blogs.models import Categories,Post,Codes,Comment
# Create your views here.
def index(request):
  allpost = Post.objects.all()
  data =  {"meta": "", "title":'Index:title','posts':allpost}
  return render(request, "blogs/index.html",data)

def about(request):
  data =  {"meta": "", "title":'Index:title'}
  return render(request, "blogs/index.html",data)  

def blog(request):
  data =  {"meta": "", "title":'Index:title'}
  return render(request, "blogs/post.html",data)  

def blogdetail(request,slug):
  post = Post.objects.get(slug=slug)
  data =  {"meta": "", "title":post.title,'post':post}
  return render(request, "blogs/post.html",data)  

def code(request):
  data =  {"meta": "", "title":'Index:title'}
  return render(request, "blogs/codepost.html",data)  

def contact(request):
  data =  {"meta": "", "title":'Conact'}
  return render(request, "blogs/contact.html",data)  