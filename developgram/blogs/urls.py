from django.urls import path
from rest_framework.urlpatterns import format_suffix_patterns
from . import views

urlpatterns = [
    path('', views.BlogList.as_view()),
    path('<int:pk>/', views.BlogDetail.as_view()),
    path('<slug:slug>/', views.BlogDetailbySlug.as_view()),
]

# urlpatterns = format_suffix_patterns(urlpatterns)