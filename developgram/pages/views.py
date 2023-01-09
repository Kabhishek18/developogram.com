from django.shortcuts import render
from django.http import HttpResponse
from django.template import Context, Template
from blogs.models import Categories,Post,Codes,Comment
import random


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
  poststyle = [1, 2, 3, 4, 5]
  rand_num = random.choice(poststyle)
  post = Post.objects.get(slug=slug)
  
  data =  {"meta": "", "title":post.title,'post':post,'poststyle':rand_num}
  return render(request, "blogs/post.html",data)  

def code(request):
  data =  {"meta": "", "title":'Index:title'}
  return render(request, "blogs/codepost.html",data)  

def contact(request):
  data =  {"meta": "", "title":'Conact'}
  return render(request, "blogs/contact.html",data)  