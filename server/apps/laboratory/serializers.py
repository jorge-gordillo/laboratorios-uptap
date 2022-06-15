from rest_framework.serializers import ModelSerializer, StringRelatedField
from apps.laboratory.models import *

class LaboratorySerializer(ModelSerializer):
   class Meta:
      model = Laboratory
      fields = '__all__'


class EquipmentGeneralSerializer(ModelSerializer):
   status = StringRelatedField()
   category = StringRelatedField()
   laboratory = StringRelatedField()

   class Meta:
      model = EquipmentGeneral
      fields = '__all__'


class ProgramSerializer(ModelSerializer):
   class Meta:
      model = Program
      fields = '__all__'

   def to_representation(self, instance):
      return {
         'label': instance.desciption,
         'id': instance.id,
         'status': instance.status.desciption,
         'version': instance.version
      }


class ScheduleSerializer(ModelSerializer):
   group = StringRelatedField()
   subject = StringRelatedField()
   teacher = StringRelatedField()
   laboratory = StringRelatedField()
   period = StringRelatedField()
   status = StringRelatedField()
   class Meta:
      model = Schedule
      fields = '__all__'

      
class AlumnoPracticaSerializer(ModelSerializer):

   class Meta:
      model = AlumPratices
      fields = '__all__'
   
   def to_representation(self, instance):
      return {
         'id': instance.id,
         'program': {
            'id': instance.program.id,
            'name': instance.program.desciption,
         },
         'enrollment': instance.enrollment.enrollment,
         'name': f'{instance.enrollment.name}' ,
         'entry_date': instance.entry_date if instance.entry_date == None else instance.entry_date.strftime("%H:%M:%S"),
         'exit_date': instance.exit_date if instance.exit_date == None else instance.exit_date.strftime("%H:%M:%S"),
         'schedule': None if instance.schedule == None else {
            'id': instance.schedule.subject.id,
            'name': instance.schedule.subject.name,
         }, 
         'equipment': 'Equipo propio' if instance.equipment == None else {
            'id': instance.equipment.id,
            'number': instance.equipment.number,
         },
         'laboratory': {
            'id': instance.laboratory.id,
            'name': instance.laboratory.name
         },
      }


class TeacherPratcesSerializer(ModelSerializer):
   class Meta:
      model = TeacherPratces
      fields = '__all__'

   def to_representation(self, instance):
      return {
         'id': instance.id,
         'teacher': {
            'id': instance.teacher.id,
            'name': instance.teacher.__str__(),
         },
         'description': instance.description,
         'entry_date': instance.entry_date if instance.entry_date == None else instance.entry_date.strftime("%H:%M:%S"),
         'exit_date': instance.exit_date if instance.exit_date == None else instance.exit_date.strftime("%H:%M:%S"),
         'group': instance.schedule.group.__str__() if not instance.schedule == None else None,
         'schedule': None if instance.schedule == None else {
            'id': instance.schedule.id,
            'name': instance.schedule.subject.name,
         },
         'equipment': 'Equipo propio' if instance.equipment == None else {
            'id': instance.equipment.id,
            'number': instance.equipment.number,
         },
         'laboratory': {
            'id': instance.laboratory.id,
            'name': instance.laboratory.name
         },
         'program': None if instance.program == None else {
            'id': instance.program.id,
            'name': instance.program.desciption,
         },
      }

