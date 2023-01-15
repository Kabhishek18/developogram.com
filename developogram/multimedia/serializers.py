from rest_framework import serializers
from .models import MultiMediaFile

class FileSerializer(serializers.ModelSerializer):
  class Meta():
    model = MultiMediaFile
    fields = ('file', 'remark', 'created_on','updated_on')