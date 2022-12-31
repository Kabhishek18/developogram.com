from django.db import models
from django.contrib.auth.models import User


STATUS = (
    (0,"Draft"),
    (1,"Publish")
)

class Post(models.Model):
    title = models.CharField(max_length=200, unique=True)
    subtitle = models.CharField()
    slug = models.SlugField(max_length=200, unique=True)
    image = models.ImageField(upload_to='blogimages/')

    author = models.ForeignKey(User, on_delete= models.CASCADE,related_name='blog_posts')
    
    precontent = models.TextField()
    content = models.TextField()
    
    status = models.IntegerField(choices=STATUS, default=0)


    updated_on = models.DateTimeField(auto_now= True)
    created_on = models.DateTimeField(auto_now_add=True)
    
    class Meta:
        ordering = ['-created_on']

    def __str__(self):
        return self.title