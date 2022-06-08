# Generated by Django 3.2.9 on 2022-06-07 22:57

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    initial = True

    dependencies = [
        ('alumn', '0001_initial'),
        ('teacher', '0001_initial'),
        ('main', '0001_initial'),
    ]

    operations = [
        migrations.CreateModel(
            name='CategoryEquipment',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('desciption', models.CharField(help_text='Nombre de la Categoria', max_length=30, unique=True, verbose_name='Categoria')),
            ],
            options={
                'verbose_name': 'Categoria de Equipo',
                'verbose_name_plural': 'Categorias de equipos',
                'db_table': 'LABS_CATEGORIES_EQUIPMENT',
            },
        ),
        migrations.CreateModel(
            name='EquipmentGeneral',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('number', models.IntegerField(verbose_name='Numemo de Equipo')),
                ('description', models.TextField(verbose_name='Descripcion')),
                ('category', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='laboratory.categoryequipment', verbose_name='Categoria de Equipo')),
            ],
            options={
                'verbose_name': 'Equipo general',
                'verbose_name_plural': 'Equipos generales',
                'db_table': 'LABS_EQUIPMENT_GENERAL',
            },
        ),
        migrations.CreateModel(
            name='Laboratory',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('name', models.CharField(help_text='Nombre del laboratorio', max_length=50, unique=True, verbose_name='Nombre')),
            ],
            options={
                'verbose_name': 'Laboratorio',
                'verbose_name_plural': 'Laboratorios',
                'db_table': 'LABS_LABORATORIES',
            },
        ),
        migrations.CreateModel(
            name='Schedule',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('day', models.CharField(choices=[('Lunes', 'Lunes'), ('Martes', 'Martes'), ('Miercoles', 'Miercoles'), ('Jueves', 'Jueves'), ('Viernes', 'Viernes'), ('Sabado', 'Sabado'), ('Domingo', 'Domingo')], help_text='Dia de la practica', max_length=15, verbose_name='Dia')),
                ('time_start', models.TimeField(help_text='Introduce la hora de inicio', verbose_name='Hora inicio')),
                ('time_end', models.TimeField(help_text='Introduce la hora fin', verbose_name='Hora fin')),
                ('group', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='main.group', verbose_name='Grupo')),
                ('laboratory', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='laboratory.laboratory', verbose_name='Laboratorio')),
                ('period', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='main.period', verbose_name='Periodo')),
                ('status', models.ForeignKey(default=1, help_text='Inactivo ó Activo', on_delete=django.db.models.deletion.CASCADE, to='main.status', verbose_name='Estado')),
                ('subject', models.ForeignKey(help_text='Nombre de la Asignatura', on_delete=django.db.models.deletion.CASCADE, to='main.subject', verbose_name='Asignatura')),
                ('teacher', models.ForeignKey(help_text='Nombre del Docente', on_delete=django.db.models.deletion.CASCADE, to='teacher.teacher', verbose_name='Docente')),
            ],
            options={
                'verbose_name': 'Horario',
                'verbose_name_plural': 'Horarios',
                'db_table': 'LABS_SCHEDULE',
            },
        ),
        migrations.CreateModel(
            name='StatusEquipment',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('desciption', models.CharField(help_text='Nombre del Estado', max_length=25, unique=True, verbose_name='Estado')),
            ],
            options={
                'verbose_name': 'Estado de Equipo',
                'verbose_name_plural': 'Estados de equipos',
                'db_table': 'LABS_STATUS_EQUIPMENT',
            },
        ),
        migrations.CreateModel(
            name='TeacherPratces',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('entry_date', models.DateTimeField(auto_now_add=True, verbose_name='Fecha de entrada')),
                ('exit_date', models.DateTimeField(blank=True, default=None, null=True, verbose_name='Fecha de salida')),
                ('description', models.CharField(max_length=250, verbose_name='Descripción de la practica')),
                ('equipment', models.ForeignKey(blank=True, default=None, null=True, on_delete=django.db.models.deletion.CASCADE, to='laboratory.equipmentgeneral', verbose_name='Equipo')),
                ('laboratory', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='laboratory.laboratory', verbose_name='Laboratorio')),
                ('schedule', models.ForeignKey(blank=True, null=True, on_delete=django.db.models.deletion.CASCADE, to='laboratory.schedule', verbose_name='Horario')),
                ('teacher', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='teacher.teacher', verbose_name='Docente')),
            ],
            options={
                'verbose_name': 'Practica Docente',
                'verbose_name_plural': 'Practicas docentes',
                'db_table': 'LABS_TEACHER_PRACTICES',
            },
        ),
        migrations.CreateModel(
            name='Program',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('desciption', models.CharField(max_length=100, verbose_name='Nombre')),
                ('version', models.CharField(max_length=20, verbose_name='Version')),
                ('status', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='laboratory.statusequipment', verbose_name='Estado')),
            ],
            options={
                'verbose_name': 'Programa',
                'verbose_name_plural': 'Programas',
                'db_table': 'LABS_PROGRAMS_CAT',
            },
        ),
        migrations.AddField(
            model_name='equipmentgeneral',
            name='laboratory',
            field=models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='laboratory.laboratory', verbose_name='Laboratorio'),
        ),
        migrations.AddField(
            model_name='equipmentgeneral',
            name='status',
            field=models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='laboratory.statusequipment', verbose_name='Estado'),
        ),
        migrations.CreateModel(
            name='AlumPratices',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('entry_date', models.DateTimeField(auto_now_add=True, verbose_name='Fecha de entrada')),
                ('exit_date', models.DateTimeField(blank=True, default=None, null=True, verbose_name='Fecha de salida')),
                ('enrollment', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='alumn.alumn', verbose_name='Matricula')),
                ('equipment', models.ForeignKey(blank=True, default=None, null=True, on_delete=django.db.models.deletion.CASCADE, to='laboratory.equipmentgeneral', verbose_name='Equipo')),
                ('laboratory', models.ForeignKey(default=1, on_delete=django.db.models.deletion.CASCADE, to='laboratory.laboratory', verbose_name='Laboratorio')),
                ('program', models.ForeignKey(blank=True, null=True, on_delete=django.db.models.deletion.CASCADE, to='laboratory.program', verbose_name='Programa')),
                ('schedule', models.ForeignKey(blank=True, null=True, on_delete=django.db.models.deletion.CASCADE, to='laboratory.schedule', verbose_name='Horario')),
            ],
            options={
                'verbose_name': 'Practica Alumno',
                'verbose_name_plural': 'Practicas alumnos',
                'db_table': 'LABS_ALUM_PRATICES',
            },
        ),
    ]
