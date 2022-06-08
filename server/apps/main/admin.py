from django.contrib.admin import ModelAdmin, register, site

from apps.main.models import *

@register(Status)
class StatusAdmin(ModelAdmin):
   list_display = ('id', 'description')

@register(Cycle)
class CycleAdmin(ModelAdmin):
   list_display = ('id', 'name', 'start_date', 'end_date', 'status')
   list_filter = ('status',)
   list_display_links = ('name',)
   actions = None

@register(Career)
class CareerAdmin(ModelAdmin):
   list_display = ('id', 'academic_program_name', 'homosigla', 'status', 'modality')
   search_fields = ('academic_program_name', 'homosigla',)
   list_filter = ('status', 'modality',)
   actions = None
   ordering = ('id',)
   list_display_links = ('academic_program_name',)
   # list_editable = ()
   # list_per_page = ()
   # exclude = ()
    

@register(Modality)
class ModalityAdmin(ModelAdmin):
   list_display = ('id', 'description', 'status')
   list_display_links = ('description',)
   list_filter = ('status',)
   actions = None

@register(Quarter)
class QuarterModel(ModelAdmin):
   actions = None

@register(Subject)
class SubjectAdmin(ModelAdmin):
   list_display = ('id', 'name', 'quarter', 'status')
   search_fields = ('name',)
   list_filter = ('status', 'quarter',)
   actions = None
   ordering = ('name',)
   list_display_links = ('name',)
   ist_per_page = 50

@register(Period)
class PeriodAdmin(ModelAdmin):
   pass

@register(Shift)
class ShiftAdmin(ModelAdmin):
   pass

@register(Group)
class GroupAdmin(ModelAdmin):
   pass


site.site_header = 'Laboratorios UpTap'
site.site_title = 'UpTap'
site.index_title = 'Laboratorios'