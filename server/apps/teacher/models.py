from django.db.models import Model, ForeignKey, CASCADE
from django.db.models.fields import CharField, EmailField
from apps.main.models import Status, genderOptions

# -----Tabla Docente-----
class Teacher(Model):
   first_name = CharField(max_length=30, verbose_name='Nombre(s)')
   last_name = CharField(max_length=15, verbose_name='Apellido paterno')
   second_last_name = CharField(max_length=15, verbose_name='Apellido materno')
   email = EmailField(unique=True, verbose_name='Correo', default='@uptapachula.edu.mx')
   gender = CharField(max_length=50, choices=genderOptions, default='M', verbose_name='Género')
   teacher_status = ForeignKey(Status, default=2, on_delete=CASCADE, verbose_name='Estatus del docente')

   def __str__(self):
      return f'{self.first_name} {self.last_name} {self.second_last_name}'

   class Meta:
      db_table = "LABS_TEACHER_CAT"
      verbose_name = 'Docente'
      verbose_name_plural = 'Docentes'
      ordering = ['first_name', 'last_name', 'second_last_name']
