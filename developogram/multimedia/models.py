from django.db import models

class MultiMediaFile(models.Model):
    file = models.FileField(upload_to='commonmediafiles', blank=False, null=False)
    updated_on = models.DateTimeField(auto_now= True)
    created_on = models.DateTimeField(auto_now_add=True)

    class Meta:
        ordering = ['-created_on']
