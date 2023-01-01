from django.shortcuts import render
from blogs.models import Post

def index(request):
    # queryset = Post.objects.all()
    queryset = Post.objects.all()
    data = {
            'querysets':queryset,
            'title': 'Title Testing',
            'content': 'content Testing',
            'meta': 'Meta Testing',
    }
    return render(request, "testcase/index.html", data)
