from rest_framework.serializers import ModelSerializer, StringRelatedField
from apps.main.models import Group


class GroupSerializer(ModelSerializer):
   status = StringRelatedField()
   career = StringRelatedField()
   period = StringRelatedField()
   shift = StringRelatedField()
   generation = StringRelatedField()
   group_type = StringRelatedField()
   quarter = StringRelatedField()

   class Meta:
      model = Group
      fields = '__all__'

