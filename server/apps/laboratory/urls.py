from rest_framework.routers import DefaultRouter
from apps.laboratory.views import *

router = DefaultRouter()

router.register(r'programs', ProgramModelView, basename='programs')
router.register(r'schedule', ScheduleListView, basename='schedule')
router.register(r'schedule/active', SheduleActiveView, basename='schedule active')
router.register(r'equipments', EquipmentGeneralView, basename='equipment')
router.register(r'data', DataView, basename='data')
router.register(r'alumns/practices', AlumnPracticeView, basename='alumnos practicas')
router.register(r'teachers/practices', TeacherPratcesListView, basename='teachers practicas')

urlpatterns = router.urls