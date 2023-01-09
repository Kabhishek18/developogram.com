from django.db import models
from django.contrib.auth.models import User
from django.utils.html import mark_safe
from mptt.models import MPTTModel, TreeForeignKey


STATUS = (
    (0,"Draft"),
    (1,"Publish")
)

#Categories for Post
class Categories(MPTTModel):
    name = models.CharField(max_length=150)
    slug = models.SlugField(unique=True)
    parent = TreeForeignKey(
        'self',
        blank=True,
        null=True,
        related_name='child',
        on_delete=models.CASCADE
    )
    status = models.IntegerField(choices=STATUS, default=0)
    image = models.ImageField(upload_to='blogimages/',null=True,blank=True)
    @property
    def thumbnail_preview(self):
        if self.image:
            return mark_safe('<img src="{}" width="320" height="240" />'.format(self.image.url))
        return ""  
    updated_on = models.DateTimeField(auto_now= True)
    created_on = models.DateTimeField(auto_now_add=True)
    
    class Meta:
        unique_together = ('slug', 'parent',)    
        verbose_name_plural = "categories"   

    def __str__(self):                           
        full_path = [self.name]            
        k = self.parent
        while k is not None:
            full_path.append(k.name)
            k = k.parent

        return ' -> '.join(full_path[::-1])

class Tag(models.Model):
    name = models.CharField(max_length=300,null=True)
    content = models.TextField()
    status = models.IntegerField(choices=STATUS, default=0)
    updated_on = models.DateTimeField(auto_now= True)
    created_on = models.DateTimeField(auto_now_add=True)
    class Meta:
        verbose_name_plural = ("Tags")

    def __str__(self):
        return self.name

#Blog Post
class Post(models.Model):
    title = models.CharField(max_length=200, unique=True)
    subtitle = models.CharField(max_length=400)
    slug = models.SlugField(max_length=200, unique=True)
    metatag = models.TextField(null=True,default='',blank=True)
    author = models.ForeignKey(User, on_delete= models.DO_NOTHING,related_name='blog_posts',blank=True,null=True)
    category = models.ForeignKey('Categories', on_delete= models.DO_NOTHING,related_name='blog_cat_posts',blank=True,null=True)
    labeltag = models.ForeignKey('LabelTag', on_delete= models.DO_NOTHING,related_name='blog_post_tags',blank=True,null=True)
    precontent = models.TextField()
    content = models.TextField()
    
    status = models.IntegerField(choices=STATUS, default=0)
    image = models.ImageField(upload_to='blogimages/')
    @property
    def thumbnail_preview(self):
        if self.image:
            return mark_safe('<img src="{}" width="320" height="240" />'.format(self.image.url))
        return ""  
    updated_on = models.DateTimeField(auto_now= True)
    created_on = models.DateTimeField(auto_now_add=True)
    
    class Meta:
        ordering = ['-created_on']

    def __str__(self):
        return self.title

#Blog Code
class Codes(models.Model):
    title = models.CharField(max_length=200, unique=True)
    subtitle = models.CharField(max_length=400)
    slug = models.SlugField(max_length=200, unique=True)
    author = models.ForeignKey(User, on_delete= models.DO_NOTHING,related_name='blog_codes',blank=True,null=True)
    category = models.ForeignKey('Categories', on_delete= models.DO_NOTHING,related_name='blog_cat_codes',blank=True,null=True)
    labeltag = models.ForeignKey('LabelTag', on_delete= models.DO_NOTHING,related_name='blog_code_tags',blank=True,null=True)
    metatag = models.TextField(null=True,default='',blank=True)
    content = models.TextField()
    status = models.IntegerField(choices=STATUS, default=0)
    image = models.ImageField(upload_to='codeimages/')
    @property
    def thumbnail_preview(self):
        if self.image:
            return mark_safe('<img src="{}" width="320" height="240" />'.format(self.image.url))
        return ""  
    updated_on = models.DateTimeField(auto_now= True)
    created_on = models.DateTimeField(auto_now_add=True)
    
    class Meta:
        ordering = ['-created_on']
        verbose_name_plural = "codes"   

    def __str__(self):
        return self.title

#Comments for Post and codes
class Comment(models.Model):
    name = models.CharField(max_length=300,null=True)
    email = models.CharField(max_length=300)
    content = models.TextField()
    postname = models.ForeignKey('Post', on_delete= models.DO_NOTHING,related_name='blog_post_comm',blank=True,null=True)
    codename = models.ForeignKey('Codes', on_delete= models.DO_NOTHING,related_name='blog_codes_comm',blank=True,null=True)
    status = models.IntegerField(choices=STATUS, default=0)
    updated_on = models.DateTimeField(auto_now= True)
    created_on = models.DateTimeField(auto_now_add=True)
    

    class Meta:
        verbose_name_plural = ("Comments")

    def __str__(self):
        return self.name

#Comments for Post and codes
class LabelTag(models.Model):
    name = models.CharField(max_length=300,null=True)
    content = models.TextField()
    status = models.IntegerField(choices=STATUS, default=0)
    updated_on = models.DateTimeField(auto_now= True)
    created_on = models.DateTimeField(auto_now_add=True)
    class Meta:
        verbose_name_plural = ("Tags")

    def __str__(self):
        return self.name

    