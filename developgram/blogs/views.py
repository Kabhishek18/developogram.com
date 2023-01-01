from rest_framework import generics
from rest_framework.pagination import PageNumberPagination
from . import serializers
from .models import Post

class LargeResultsSetPagination(PageNumberPagination):
    page_size = 10
    page_size_query_param = 'page_size'
    max_page_size = 10

class BlogList(generics.ListAPIView):
    queryset = Post.objects.all()
    serializer_class = serializers.UserSerializer
    pagination_class = LargeResultsSetPagination

class BlogDetail(generics.RetrieveAPIView):
    queryset = Post.objects.all()
    serializer_class = serializers.UserSerializer

class BlogDetailbySlug(generics.RetrieveAPIView):
    lookup_field = 'slug'
    queryset = Post.objects.all()
    serializer_class = serializers.UserSerializer
