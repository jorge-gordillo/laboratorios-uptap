from django.contrib.admin import ModelAdmin, register
from apps.laboratory.models import *


@register(Schedule)
class ScheduleAdmin(ModelAdmin):
   list_display = ('id', 'group','subject', 'teacher', 'day', 'time_start', 'time_end', 'laboratory', 'status')
   list_filter = ('laboratory',)
   actions = None 
   list_display_links = ('group',)
   list_filter = ('group', 'day')
   # list_per_page = 25

@register(Program)
class ProgramAdmin(ModelAdmin):
   list_display = ('id', 'desciption', 'version', 'status')
   list_filter = ('status',)
   list_display_links = ('desciption',)
   search_fields = ('desciption',)
   list_per_page = 50
   actions = None

@register(Laboratory)
class LaboratoryAdmin(ModelAdmin):
   list_display = ('id', 'name',)
   actions = None
   # list_filter = ('',)

@register(StatusEquipment)
class StatusEquipmet(ModelAdmin):
   list_display = ('id', 'desciption')
   actions = None
   list_display_links = ('desciption',)

@register(CategoryEquipment)
class CategoryEquipmentAdmin(ModelAdmin):
   list_display = ('id', 'desciption')
   actions = None
   list_display_links = ('desciption',)

@register(EquipmentGeneral)
class EquipmentGeneralAdmin(ModelAdmin):
   list_display = ('id', 'number', 'status', 'category', 'laboratory',)
   list_filter = ('status', 'category', 'laboratory',)
   actions = None
   list_display_links = ('id', 'number')
   list_per_page = 25


@register(AlumPratices)
class AlumnPracticesAdmin(ModelAdmin):
   list_display = ('id','enrollment', 'entry_date', 'exit_date', 'equipment', 'schedule', 'laboratory',)
   list_filter = ('laboratory',)
   date_hierarchy = 'entry_date'


@register(TeacherPratces)
class TeacherPratcesAdmin(ModelAdmin):
   list_display = ('id', 'teacher', 'entry_date', 'exit_date', 'schedule', 'laboratory',)
   list_filter = ('laboratory',)
   date_hierarchy = 'entry_date'

