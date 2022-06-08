from django.contrib.admin import ModelAdmin, register
from apps.alumn.models import Alumn


@register(Alumn)
class AlumAdmin(ModelAdmin):
   list_display = ('enrollment', '__str__', 'gender', 'email')
   list_filter = ('gender',)
