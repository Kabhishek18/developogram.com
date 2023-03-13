from django.shortcuts import render
from .forms import InputForm

# Create your views here.
def index(request):
  context ={}
  context['form']= InputForm()
  return render(request, "handwriting/form.html", context)
  