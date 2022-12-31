from django.shortcuts import render,redirect
from django.contrib.auth.models import User
from django.contrib import auth

# def signup(request):
#     if request.method == "POST":
#         if request.POST['password1'] == request.POST['password2']:
#             try:
#                 User.objects.get(username = request.POST['username'])
#                 return render (request,'user/signup.html', {'error':'Username is already taken!'})
#             except User.DoesNotExist:
#                 user = User.objects.create_user(request.POST['username'],password=request.POST['password1'])
#                 auth.login(request,user)
#                 return redirect('login')
#         else:
#             return render (request,'user/signup.html', {'error':'Password does not match!'})
#     else:
#         return render(request,'user/signup.html')

# def login(request):
#     if request.method == 'POST':
#         user = auth.authenticate(username=request.POST['username'],password = request.POST['password'])
#         if user is not None:
#             auth.login(request,user)
#             return redirect('/')
#         else:
#             return render (request,'user/login.html', {'error':'Username or password is incorrect!'})
#     else:
#         return render(request,'user/login.html')

# def logout(request):
#     auth.logout(request)

#     return redirect('/')
