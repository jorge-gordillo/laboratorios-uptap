from rest_framework.routers import DefaultRouter
from apps.teacher.views import TeacherView

router = DefaultRouter()

router.register(r'teachers', TeacherView, basename='teachers')

urlpatterns = router.urls