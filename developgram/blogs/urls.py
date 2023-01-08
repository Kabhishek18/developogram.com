from django.urls import path
from rest_framework.urlpatterns import format_suffix_patterns
from . import views

urlpatterns = [
    path('blog/', views.BlogList.as_view()),
    path('blog/<int:pk>/', views.BlogDetail.as_view()),
    path('blog/<slug:slug>/', views.BlogDetailbySlug.as_view()),
    path('code/', views.CodeList.as_view()),
    path('code/<int:pk>/', views.CodeDetail.as_view()),
    path('code/<slug:slug>/', views.CodeDetailbySlug.as_view()),
]

# urlpatterns = format_suffix_patterns(urlpatterns)