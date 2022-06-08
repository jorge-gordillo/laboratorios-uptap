from django.db.models import Model, ForeignKey, CASCADE
from django.db.models.fields import CharField, TimeField, IntegerField, TextField, DateTimeField

from apps.main.models import Group, Status, Subject, Period
from apps.teacher.models import Teacher
from apps.alumn.models import Alumn

# -----opciones para seleccionar dia-----
dayOptions = [
	("Lunes", "Lunes"),
	("Martes", "Martes"),
	("Miercoles", "Miercoles"),
	("Jueves", "Jueves"),
	("Viernes", "Viernes"),
	("Sabado", "Sabado"),
	("Domingo", "Domingo"),
]


# ------Tabla Laboratorio-----
class Laboratory(Model):
   name = CharField(max_length=50, unique=True, verbose_name='Nombre', help_text='Nombre del laboratorio')
 
   def __str__(self):
      return self.name
 
   class Meta:
      db_table = 'LABS_LABORATORIES'
      verbose_name = 'Laboratorio'
      verbose_name_plural = 'Laboratorios'


# -----Tabla Estado de Equipo------
class StatusEquipment(Model):
   desciption = CharField(max_length=25, unique=True, verbose_name='Estado', help_text='Nombre del Estado')

   def __str__(self):
      return self.desciption

   class Meta:
      db_table = 'LABS_STATUS_EQUIPMENT'
      verbose_name = 'Estado de Equipo'
      verbose_name_plural = 'Estados de equipos'


# -----Tabla Categoria de Equipo------
class CategoryEquipment(Model):
   desciption = CharField(max_length=30, unique=True, verbose_name='Categoria', help_text='Nombre de la Categoria')

   def __str__(self):
      return self.desciption
   
   class Meta:
      db_table = 'LABS_CATEGORIES_EQUIPMENT'
      verbose_name = 'Categoria de Equipo'
      verbose_name_plural = 'Categorias de equipos'


# -----Tabla Equipos General-----
class EquipmentGeneral(Model):
   number = IntegerField(unique=False, verbose_name='Numemo de Equipo')
   status = ForeignKey(StatusEquipment, on_delete=CASCADE, verbose_name='Estado')
   category = ForeignKey(CategoryEquipment, on_delete=CASCADE, verbose_name='Categoria de Equipo')
   laboratory = ForeignKey(Laboratory, on_delete=CASCADE, verbose_name='Laboratorio')
   description = TextField(verbose_name='Descripcion')

   def __str__(self):
      return f'{self.category} - # {self.number}'
   
   class Meta:
      db_table = 'LABS_EQUIPMENT_GENERAL'
      verbose_name = 'Equipo general'
      verbose_name_plural = 'Equipos generales'


# ------Tabla Programas-----
class Program(Model):
   desciption = CharField(max_length=100, unique=False, verbose_name='Nombre')
   version = CharField(max_length=20, unique=False, verbose_name='Version')
   status = ForeignKey(StatusEquipment, on_delete=CASCADE, verbose_name='Estado')

   def __str__(self):
      return self.desciption
   
   class Meta:
      db_table = 'LABS_PROGRAMS_CAT'
      verbose_name = 'Programa'
      verbose_name_plural = 'Programas'


# -----Tabla Horario-----
class Schedule(Model):
   group = ForeignKey(Group, on_delete=CASCADE, verbose_name='Grupo')
   subject = ForeignKey(Subject, on_delete=CASCADE, verbose_name='Asignatura', help_text='Nombre de la Asignatura')
   teacher = ForeignKey(Teacher, on_delete=CASCADE, verbose_name='Docente', help_text='Nombre del Docente')
   day = CharField(max_length=15, choices=dayOptions, verbose_name='Dia', help_text='Dia de la practica')
   time_start = TimeField(verbose_name='Hora inicio', help_text='Introduce la hora de inicio')
   time_end = TimeField(verbose_name='Hora fin', help_text='Introduce la hora fin')
   laboratory = ForeignKey(Laboratory, on_delete=CASCADE, verbose_name='Laboratorio')
   period = ForeignKey(Period, on_delete=CASCADE, verbose_name='Periodo')
   status = ForeignKey(Status, default=1, on_delete=CASCADE, verbose_name='Estado', help_text='Inactivo ó Activo')

   def __str__(self):
      return f'{self.subject} - {self.group}'

   class Meta:
      db_table = 'LABS_SCHEDULE'
      verbose_name = 'Horario'
      verbose_name_plural = 'Horarios'


# -----Tabla Alumno - Practica------
class AlumPratices(Model): 
   enrollment = ForeignKey(Alumn, on_delete=CASCADE, verbose_name='Matricula')
   entry_date = DateTimeField(auto_now_add=True, verbose_name='Fecha de entrada')
   exit_date = DateTimeField(auto_now=False, blank=True, null=True, default=None, verbose_name='Fecha de salida')
   equipment = ForeignKey(EquipmentGeneral, null=True, blank=True, default=None, on_delete=CASCADE, verbose_name='Equipo')
   schedule = ForeignKey(Schedule, null=True, blank=True, on_delete=CASCADE, verbose_name='Horario')
   laboratory = ForeignKey(Laboratory, unique=False, null=False, default=1, on_delete=CASCADE, verbose_name='Laboratorio')
   # description = CharField()
   program = ForeignKey(Program, null=True, blank=True, on_delete=CASCADE, verbose_name='Programa')

   class Meta:
      db_table = 'LABS_ALUM_PRATICES'
      verbose_name = 'Practica Alumno'
      verbose_name_plural = 'Practicas alumnos'


# -----Tabla Docente - Practics-----
class TeacherPratces(Model):
   teacher = ForeignKey(Teacher, unique=False, on_delete=CASCADE, verbose_name='Docente')
   entry_date = DateTimeField(auto_now_add=True, editable=False, verbose_name='Fecha de entrada')
   exit_date = DateTimeField(auto_now=False, blank=True, null=True, default=None, verbose_name='Fecha de salida')
   description = CharField(max_length=250, verbose_name='Descripción de la practica')
   schedule = ForeignKey(Schedule, null=True, blank=True, on_delete=CASCADE, verbose_name='Horario')
   laboratory = ForeignKey(Laboratory, on_delete=CASCADE, verbose_name='Laboratorio')
   equipment = ForeignKey(EquipmentGeneral, null=True, blank=True, default=None, on_delete=CASCADE, verbose_name='Equipo')

   def __str__(self):
      return f'{self.teacher} - {self.schedule}'

   class Meta:
      db_table = 'LABS_TEACHER_PRACTICES'
      verbose_name = 'Practica Docente'
      verbose_name_plural = 'Practicas docentes'
