from django.contrib.admin import ModelAdmin, register
from .models import Teacher


@register(Teacher)
class TeacherAdmin(ModelAdmin):
   list_display = ('id', '__str__', 'gender', 'email', 'teacher_status',)
   list_filter = ('teacher_status', 'gender')
   list_display_links = ('__str__',)

