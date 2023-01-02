from django.shortcuts import render,redirect
from urllib import request
from django.contrib.auth.models import User
from django.contrib import auth
from rest_framework.authtoken.models import Token



def UserTokenGeneration():
  for user in User.objects.all():
    Token.objects.get_or_create(user=user)