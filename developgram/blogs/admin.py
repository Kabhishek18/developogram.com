from django.contrib import admin
from django_summernote.admin import SummernoteModelAdmin
from .models import Codes,Post,Categories,Comment

class PostAdmin(SummernoteModelAdmin):
    list_display = ('title', 'slug', 'status','created_on','updated_on')
    list_filter = ("status",)
    readonly_fields = ('thumbnail_preview',) 
    search_fields = ['title', 'content']
    summernote_fields = ('content','precontent','metatag' )
    prepopulated_fields = {'slug': ('title',)}
    def thumbnail_preview(self, obj):
        return obj.thumbnail_preview

    thumbnail_preview.short_description = 'Thumbnail Preview'
    thumbnail_preview.allow_tags = True

class CategoryAdmin(SummernoteModelAdmin):
    list_display = ('name', 'slug', 'parent','created_on','updated_on')
    list_filter = ("status",'created_on','updated_on')
    readonly_fields = ('thumbnail_preview',) 
    search_fields = ['name', 'slug','parent']
    prepopulated_fields = {'slug': ('name',)}
    def thumbnail_preview(self, obj):
        return obj.thumbnail_preview

    thumbnail_preview.short_description = 'Thumbnail Preview'
    thumbnail_preview.allow_tags = True

class CodeAdmin(SummernoteModelAdmin):
    list_display = ('title', 'slug', 'status','created_on','updated_on')
    list_filter = ("status",'created_on','updated_on')
    readonly_fields = ('thumbnail_preview',) 
    search_fields = ['title', 'content']
    summernote_fields = ('content','precontent','metatag' )
    prepopulated_fields = {'slug': ('title',)}
    def thumbnail_preview(self, obj):
        return obj.thumbnail_preview

    thumbnail_preview.short_description = 'Thumbnail Preview'
    thumbnail_preview.allow_tags = True



class CommentAdmin(SummernoteModelAdmin):
    list_display = ('name', 'email','content', 'postname','codename','status','created_on','updated_on')
    list_filter = ("status",'created_on','updated_on','postname','codename')
    readonly_fields = ('postname','codename') 
    search_fields = ['title', 'content']
    summernote_fields = ('content',)


admin.site.register(Categories, CategoryAdmin)
admin.site.register(Post, PostAdmin)
admin.site.register(Codes, CodeAdmin)
admin.site.register(Comment, CommentAdmin)
