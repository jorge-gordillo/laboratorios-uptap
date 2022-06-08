from django.db.models import Model
from django.db.models.fields import CharField, EmailField, IntegerField
from apps.main.models import genderOptions


# -----Tabla Alumnos------
class Alumn(Model):
    enrollment = IntegerField(primary_key=True, serialize=False, verbose_name='Matrícula')
    first_name = CharField(max_length=30, verbose_name='Nombre(s)')
    last_name = CharField(max_length=15, verbose_name='Apellido Paterno')
    second_last_name = CharField(max_length=15, verbose_name='Apellido Materno')
    gender = CharField(verbose_name='Género', choices=genderOptions, max_length=50, default=None)
    email = EmailField(verbose_name='Correo', unique=True)

    def __str__(self):
        return f'{self.first_name} {self.last_name} {self.second_last_name}'

    class Meta:
        db_table = 'LABS_ALUMN_CAT'
        verbose_name = 'Alumno'
        verbose_name_plural = 'Alumnos'

