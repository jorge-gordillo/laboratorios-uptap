from django.db.models import Model, ForeignKey, CASCADE
from django.db.models.fields import CharField, IntegerField, DateField, BooleanField


# -----opciones para seleccionar genero
genderOptions = [("M", "Masculino"), ("F", "Femenino")]


# -----Tabla Estado-----
class Status(Model):
	status = CharField(max_length=20, unique=True, verbose_name="Status", help_text="Nombre del estado")
	description = CharField(max_length=50, unique=True, verbose_name="Descripción", help_text="Descripción del estado")

	def __str__(self):
		return self.description

	class Meta:
		db_table = 'LABS_STATUS'
		verbose_name = "Estado"
		verbose_name_plural = "Estados"


# ------Tabla Modalidad------
class Modality(Model):
	description = CharField(max_length=250, unique=True, verbose_name="Descripción", help_text='Nombre de la modalidad')
	status = ForeignKey(Status, on_delete=CASCADE, verbose_name="Estado")

	def __str__(self):
		return self.description

	class Meta:
		db_table = 'LABS_MODALITY_CAT'
		managed = True
		verbose_name = 'Modalidad'
		verbose_name_plural = 'Modalidades'


# -----Tabla Carrera-----
class Career(Model):
	academic_program_name = CharField(max_length=60, unique=True, verbose_name="Nombre del programa academico")
	homosigla = CharField(max_length=10, unique=True, verbose_name="Holosigla", help_text="Abreviatura del programa academico")
	status = ForeignKey(Status, default=2, on_delete=CASCADE, verbose_name="Estado")
	modality = ForeignKey(Modality, on_delete=CASCADE, verbose_name="Modalidad")
	academic_program_name_gdp = CharField(max_length=70, unique=True, verbose_name="Nombre programa academico dgp")

	def __str__(self):
		return self.academic_program_name

	class Meta:
		db_table = 'LABS_CAREER_CAT'
		verbose_name = 'Carrera'
		verbose_name_plural = 'Carreras'


# ------Tabla Cuatrimestre-----
class Quarter(Model):
	name = CharField(max_length=2, unique=True, verbose_name="Cuatrimestre")

	def __str__(self):
		return self.name

	class Meta:
		db_table = 'LABS_QUARTER_CAT'
		verbose_name = 'Cuatrimestre'
		verbose_name_plural = 'Cuatrimestres'


# -----Tabla Ciclo------
class Cycle(Model):
	name = CharField(max_length=50, unique=True, verbose_name="Nombre", help_text="<mes y año de inicio> - <mes y año del fin>")
	start_date = DateField(verbose_name="Fecha inicio")
	end_date = DateField(verbose_name="Fecha fin")
	status = ForeignKey(Status, on_delete=CASCADE, verbose_name="Estado")

	def __str__(self):
		return self.name

	class Meta:
		db_table = 'LABS_CYCLE_CAT'
		verbose_name = 'Ciclo'
		verbose_name_plural = 'Ciclos'


# ------Tabla Periodo------
class Period(Model):
	name = CharField(max_length=50, unique=False, verbose_name="Nombre")
	start_date = DateField(verbose_name="Fecha inicio")
	end_date = DateField(verbose_name="Fecha fin")
	vacational_start_date = DateField(verbose_name="Fecha inicio de periodo vacacional")
	vacational_end_date = DateField(verbose_name="Fecha fin de periodo vacacional")
	status = ForeignKey(Status, on_delete=CASCADE, verbose_name="Estatus")
	cycle = ForeignKey(Cycle, on_delete=CASCADE, verbose_name="Ciclo")

	def __str__(self):
		return self.name

	class Meta:
		db_table = 'LABS_PERIOD_CAT'
		verbose_name = 'Periodo'
		verbose_name_plural = 'Periodos'


# -----Tabla Asignatura------
class Subject(Model):
	name = CharField(max_length=100, verbose_name="Nombre")
	code_subject = CharField(max_length=20, blank=True, verbose_name="Clave asignatura")
	credits = IntegerField(verbose_name="Creditos", default=10)
	theoretical_hours = IntegerField(verbose_name="Horas teóricas", default=25)
	practical_hours = IntegerField(verbose_name="Horas practicas", default=5)
	certifiable = BooleanField(verbose_name="Certificable", default=True)
	status = ForeignKey(Status, on_delete=CASCADE, verbose_name="Estatus", default=2)
	quarter = ForeignKey(Quarter, on_delete=CASCADE, verbose_name="Cuatrimestre")
	limit_absence = IntegerField(verbose_name="Limite faltas", default=4)

	def __str__(self):
		return f"{self.name}"

	class Meta:
		db_table = 'LABS_SUBJECT_CAT'
		managed = True
		verbose_name = 'Asignatura'
		verbose_name_plural = 'Asignaturas'


# -----Tabla Turno-----
class Shift(Model):
	description = CharField(max_length=15, verbose_name='Descripcion')
	abbreviation = CharField(max_length=5, verbose_name='Abreviacion')

	def __str__(self):
		return self.description

	class Meta():
		db_table = 'LABS_SHIFT_CAT'
		verbose_name = 'Turno'
		verbose_name_plural = 'Turnos'


# -----Table Grupo-----
class Group(Model):
	quarter = ForeignKey(Quarter, on_delete=CASCADE, verbose_name="Cuatrimestre")
	group = CharField(max_length=30, unique=False, verbose_name="Grupo")
	shift = ForeignKey(Shift, on_delete=CASCADE, verbose_name="Turno")
	career = ForeignKey(Career, on_delete=CASCADE, verbose_name="Carrera")
	period = ForeignKey(Period, on_delete=CASCADE, verbose_name="Periodo")
	code = CharField(max_length=32, verbose_name="Clave")
	status = ForeignKey(Status, on_delete=CASCADE, verbose_name="Estatus")

	def __str__(self):
		return f"{self.code} {self.quarter}"

	class Meta:
		db_table = 'LABS_GROUP_CAT'
		verbose_name = 'Grupo'
		verbose_name_plural = 'Grupos'
