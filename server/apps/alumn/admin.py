from django.contrib.admin import ModelAdmin, register
from apps.alumn.models import Alumn


@register(Alumn)
class AlumAdmin(ModelAdmin):
   list_display = ('enrollment', 'name')
   search_fields= ('name',)