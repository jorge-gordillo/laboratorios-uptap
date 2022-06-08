from rest_framework.response import Response
from rest_framework.status import HTTP_200_OK
from rest_framework.viewsets import GenericViewSet
from apps.teacher.serializers import TeacherSerializer


# -----Teacher View-----
class TeacherView(GenericViewSet):
   serializer_class = TeacherSerializer

   def get_queryset(self):
      return self.get_serializer().Meta.model.objects.filter(teacher_status=2)
   
   def list(self, request):
      data = self.get_queryset()
      data = self.get_serializer(data, many=True)
      data = {
         'total': self.get_queryset().count(),
         'data': data.data
      }
      return Response(data, status=HTTP_200_OK)


