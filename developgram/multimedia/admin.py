from django.contrib import admin
from .models import MultiMediaFile

class MultiMediaFileAdmin(admin.ModelAdmin):
    list_display = ('file','created_on','updated_on')
    readonly_fields = ('thumbnail_preview',) 
    def thumbnail_preview(self, obj):
        return obj.thumbnail_preview

    thumbnail_preview.short_description = 'Thumbnail Preview'
    thumbnail_preview.allow_tags = True

admin.site.register(MultiMediaFile, MultiMediaFileAdmin)