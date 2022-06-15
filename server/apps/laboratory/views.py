from datetime import datetime
from traceback import print_tb
from django.utils import timezone
from rest_framework.viewsets import GenericViewSet
from rest_framework.response import Response
from rest_framework.status import HTTP_200_OK, HTTP_201_CREATED, HTTP_400_BAD_REQUEST, HTTP_404_NOT_FOUND
from apps.laboratory.serializers import *
from apps.laboratory.models import EquipmentGeneral
from apps.teacher.models import Teacher
from apps.teacher.serializers import TeacherSerializer

day = {
   '5': 'Sabado',
   '6': 'Domingo',
   '0': 'Lunes',
   '1': 'Martes',
   '2': 'Miercoles',
   '3': 'Jueves',
   '4': 'Viernes',
}[str(datetime.now().date().weekday())]


class EquipmentGeneralView(GenericViewSet):
   serializer_class = EquipmentGeneralSerializer

   def get_queryset(self):
      return self.get_serializer().Meta.model.objects.filter(status=1)
   
   def list(self, request):
      data = self.get_queryset()
      data = self.get_serializer(data, many=True)
      data = {
         'total': self.get_queryset().count(),
         'data': data.data
      }
      return Response(data, status=HTTP_200_OK)


class ProgramModelView(GenericViewSet):
   serializer_class = ProgramSerializer

   def get_queryset(self):
      return self.get_serializer().Meta.model.objects.filter(status=1)
   
   def list(self, request):
      data = self.get_queryset()
      data = self.get_serializer(data, many=True)
      data = {
         'total': self.get_queryset().count(),
         'data': data.data
      }
      return Response(data, status=HTTP_200_OK)


# -----Schedule View-----
class ScheduleListView(GenericViewSet):
   serializer_class = ScheduleSerializer
   
   def get_queryset(self):
      return self.get_serializer().Meta.model.objects.filter(day=day)
   
   def list(self, request):
      data = self.get_queryset()
      data = self.get_serializer(data, many=True)
      data = {
         'total': self.get_queryset().count(),
         'day': day,
         'data': data.data
      }
      return Response(data, status=HTTP_200_OK)

class SheduleActiveView(GenericViewSet):
   serializer_class = ScheduleSerializer

   def get_queryset(self):
      return self.get_serializer().Meta.model.objects.filter(day=day, status=2)

   def list(self, request):
      data = self.get_queryset()
      data = self.get_serializer(data, many=True)
      data = {
         'total': self.get_queryset().count(),
         'day': day,
         'data': data.data
      }
      return Response(data, status=HTTP_200_OK)


class AlumnPracticeView(GenericViewSet):
   serializer_class = AlumnoPracticaSerializer
   
   def get_queryset(self):
      return self.get_serializer().Meta.model.objects.filter(entry_date__date=datetime.now().date())

   def get_object(self):
      return self.get_serializer().Meta.model.objects.filter(id=self.kwargs['pk'])
   
   def list(self, request):
      data = self.get_queryset()
      data = self.get_serializer(data, many=True)
      data = {
         'status': 200,
         'message': 'OK',
         'day': day,
         'data': data.data
      }
      return Response(data, status=HTTP_200_OK)
   
   def create(self, request):
      pratice_serializer = self.serializer_class(data=request.data)
      if pratice_serializer.is_valid():
         EquipmentGeneral.objects.filter(id=request.data['equipment']).update(status=2)
         pratice_serializer.save()
         return Response({
            'status': 201,
            'message': 'Registro creado correctamente',
            'data': pratice_serializer.data,
         }, status=HTTP_201_CREATED)

      return Response({
         'status': 400,
         'message': 'Se produjo un error al crear el registro',
         'data': None,
      }, status=HTTP_400_BAD_REQUEST)
   
   def update(self, request, pk):
      if not self.get_object().exists():
         return Response({
            'status': 404,
            'message': 'Se produjo un error al actualizar el registro',
            'error': {
               'message': 'No se encontro el elemneto solicitado',
            },
            'data': None,
         }, HTTP_404_NOT_FOUND)

      request.data['exit_date'] = timezone.now()
      alumn_serializer = self.serializer_class(instance=self.get_object().get(), data=request.data)

      if alumn_serializer.is_valid():
         EquipmentGeneral.objects.filter(id=request.data['equipment']).update(status=1)
         alumn_serializer.save()
         return Response({
            'status': 200,
            'message': 'Registro acutalizado correctamente',
            'data': None,
         }, status=HTTP_200_OK)

      return Response({
         'status': 400,
         'message': 'Se produjo un error al actualizar el registro',
         'data': None,
      }, status=HTTP_400_BAD_REQUEST)


class TeacherPratcesListView(GenericViewSet):
   serializer_class = TeacherPratcesSerializer
   
   def get_queryset(self):
      return self.get_serializer().Meta.model.objects.filter(entry_date__date=datetime.now().date())
   
   def get_object(self):
      return self.get_serializer().Meta.model.objects.filter(id=self.kwargs['pk'])

   def list(self, request):
      data = self.get_queryset()
      data = self.get_serializer(data, many=True)
      data = {
         'status': 200,
         'message': 'OK',
         'day': day,
         'data': data.data
      }
      return Response(data, status=HTTP_200_OK)
   
   def create(self, request):
      print(request.data)
      pratice_serializer = self.serializer_class(data=request.data)
      if pratice_serializer.is_valid():
         EquipmentGeneral.objects.filter(id=request.data['equipment']).update(status=2)
         Schedule.objects.filter(id=request.data['schedule']).update(status=2)
         pratice_serializer.save()
         return Response({
            'status': 201,
            'message': 'Registro creado correctamente',
            'data': pratice_serializer.data,
         }, status=HTTP_201_CREATED)
      return Response({
         'status': 400,
         'messgge': 'Error al registrar la entrada',
         'errors': pratice_serializer.errors
      }, status=HTTP_400_BAD_REQUEST)
      
   def update(self, request, pk=None):
      if not self.get_object().exists():
         return Response({
            'status': 404,
            'message': 'Se produjo un error al actualizar el registro',
            'error': {
               'message': 'No se encontro el elemneto solicitado',
            },
            'data': None,
         }, HTTP_404_NOT_FOUND)

      request.data['exit_date'] = timezone.now()
      serializer = self.serializer_class(instance=self.get_object().get(), data=request.data)
      print(request.data)
      if serializer.is_valid():
         EquipmentGeneral.objects.filter(id=request.data['equipment']).update(status=1)
         Schedule.objects.filter(id=request.data['schedule']).update(status=1)
         serializer.save()
         print(serializer.data)
         return Response({
            'status': 200,
            'message': 'Registro actualizado correctamente!',
            'data': None,
         }, status=HTTP_200_OK) 
      return Response({
         'status': 400,
         'message': 'Error al actualizar el registro',
         'error':serializer.errors,
         'data': None,
      }, status=HTTP_400_BAD_REQUEST) 


class DataView(GenericViewSet):
   def get_queryset(self):
       return None

   def list(self, request):
      alumn_pratices = AlumPratices.objects.filter(entry_date__date=datetime.now().date()).order_by('-entry_date')
      alumn_pratices_serializer = AlumnoPracticaSerializer(data=alumn_pratices, many=True)
      alumn_pratices_serializer.is_valid()

      schedule_active = Schedule.objects.filter(day=day, status=2)
      schedule_active_serializer = ScheduleSerializer(data=schedule_active, many=True)
      schedule_active_serializer.is_valid()

      schedule = Schedule.objects.filter(day=day)
      schedule_serializer = ScheduleSerializer(data=schedule, many=True)
      schedule_serializer.is_valid()

      equipments = EquipmentGeneral.objects.filter(status=1).order_by('number')
      equipments_serializer = EquipmentGeneralSerializer(data=equipments, many=True)
      equipments_serializer.is_valid()

      teachers = Teacher.objects.filter(teacher_status=2)
      teachers_serializer = TeacherSerializer(data=teachers, many=True)
      teachers_serializer.is_valid()

      programs = Program.objects.filter(status=1)
      prgrams_serializer = ProgramSerializer(data=programs, many=True)
      prgrams_serializer.is_valid()

      teacher_pratices = TeacherPratces.objects.filter(entry_date__date=datetime.now().date()).order_by('-entry_date')
      teacher_pratices_serializer = TeacherPratcesSerializer(data=teacher_pratices, many=True)
      teacher_pratices_serializer.is_valid()

      data = {
         'status': 200,
         'message': 'OK',
         'data': {
            'alumnPractices': alumn_pratices_serializer.data,
            'scheduleActive': schedule_active_serializer.data,
            'equipments': equipments_serializer.data,
            'programs': prgrams_serializer.data,
            'teachers': teachers_serializer.data,
            'schedule': schedule_serializer.data,
            'teacherPractices': teacher_pratices_serializer.data,
         }
      }
      return Response(data, status=HTTP_200_OK)
   