from django.db.models import Model
from django.db.models.fields import CharField, EmailField, IntegerField
from apps.main.models import genderOptions


# -----Tabla Alumnos------
class Alumn(Model):
    enrollment = IntegerField(primary_key=True, serialize=False, verbose_name='Matrícula')
    name = CharField(max_length=120, verbose_name='Nombre(s)')

    def __str__(self):
        return f'{self.name}'

    class Meta:
        db_table = 'LABS_ALUMN_CAT'
        verbose_name = 'Alumno'
        verbose_name_plural = 'Alumnos'
