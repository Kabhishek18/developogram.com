from django.contrib import admin
from django_summernote.admin import SummernoteModelAdmin
from .models import Post

class PostAdmin(SummernoteModelAdmin):
    list_display = ('title', 'slug', 'status','created_on','updated_on')
    list_filter = ("status",)
    readonly_fields = ('thumbnail_preview',) 
    search_fields = ['title', 'content']
    summernote_fields = ('content','precontent', )
    prepopulated_fields = {'slug': ('title',)}
    def thumbnail_preview(self, obj):
        return obj.thumbnail_preview

    thumbnail_preview.short_description = 'Thumbnail Preview'
    thumbnail_preview.allow_tags = True

admin.site.register(Post, PostAdmin)