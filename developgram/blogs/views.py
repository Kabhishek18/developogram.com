from rest_framework import generics
from . import serializers
from .models import Post

class BlogList(generics.ListAPIView):
    queryset = Post.objects.all()
    serializer_class = serializers.UserSerializer

class BlogDetail(generics.RetrieveAPIView):
    queryset = Post.objects.all()
    serializer_class = serializers.UserSerializer

class BlogDetailbySlug(generics.RetrieveAPIView):
    lookup_field = 'slug'
    queryset = Post.objects.all()
    serializer_class = serializers.UserSerializer
