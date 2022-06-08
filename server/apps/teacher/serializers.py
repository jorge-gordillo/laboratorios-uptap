from rest_framework.serializers import ModelSerializer
from apps.teacher.models import Teacher

class TeacherSerializer(ModelSerializer):
   class Meta:
      model = Teacher
      fields = '__all__'
   
   def to_representation(self, instance):
      return {
         'id': instance.id,
         'label': instance.__str__(),
      }