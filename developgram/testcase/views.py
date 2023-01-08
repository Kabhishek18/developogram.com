from django.shortcuts import render
from django.http import HttpResponse
from django.template import Context, Template

# Create your views here.
def index(request):
  return render(
        request, "blogs/index.html", {"movie": "Casablanca", "year": 1942}
    )