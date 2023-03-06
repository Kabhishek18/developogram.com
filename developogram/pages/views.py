from django.shortcuts import render
from django.http import HttpResponse
from django.template import Context, Template
# Paginator in a view function 
from django.core.paginator import Paginator
from blogs.models import Categories,Post,Codes,Comment
import random


# Create your views here.
def index(request):
  allpost = Post.objects.all()
  paginator = Paginator(allpost, 2) # Show 25 contacts per page.
  page_number = request.GET.get('page')
  page_obj = paginator.get_page(page_number)
  data =  {"meta": "", "title":'Index : Title','posts':page_obj}
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
  meta = post.metatag if (post.metatag !="") else ''
  data =  {"meta": meta, "title":post.title,'post':post,'poststyle':rand_num}
  return render(request, "blogs/post.html",data)  

def code(request):
  allcode = Codes.objects.all()
  data =  {"meta": "", "title":"Code : Ek Prem Katha",'posts':allcode}
  return render(request, "blogs/codepost.html",data)  


def codedetail(request,slug):
  poststyle = [1, 2, 3, 4, 5]
  rand_num = random.choice(poststyle)
  post = Codes.objects.get(slug=slug)  
  data =  {"meta": "", "title":post.title,'post':post,'poststyle':rand_num}
  return render(request, "blogs/post.html",data)  


def contact(request):
  data =  {"meta": "", "title":'Conact'}
  return render(request, "blogs/contact.html",data)  