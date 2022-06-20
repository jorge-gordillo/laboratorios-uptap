from django.conf import settings
from django.contrib import admin
from django.urls import path, include, re_path
from django.conf.urls.static import static

from rest_framework import permissions
from drf_yasg.views import get_schema_view
from drf_yasg import openapi

schema_view = get_schema_view(
    openapi.Info(
        title="Laboratorios API",
        default_version='v1',
        description="API Rest para un software que administra las entradas y salidad de los alumnos en los laboratorios de la Universidad Politectica de Tapachula",
        # terms_of_service="https://www.google.com/policies/terms/",
        contact=openapi.Contact(email="203102@uptapachulas.edu.mx"),
        license=openapi.License(name="BSD License"),
    ),
    public=True,
    permission_classes=[permissions.AllowAny],
)

urlpatterns = [
    path('', include('apps.main.urls'), name='api'),
    path('libre', include('apps.main.urls'), name='api'),
    path('docente', include('apps.main.urls'), name='api'),
    path('docente-libre', include('apps.main.urls'), name='api'),

    path('admin/', admin.site.urls),

    re_path(r'^swagger(?P<format>\.json|\.yaml)$', schema_view.without_ui(cache_timeout=0), name='schema-json'),
    re_path(r'^swagger/$', schema_view.with_ui('swagger', cache_timeout=0), name='schema-swagger-ui'),
    re_path(r'^redoc/$', schema_view.with_ui('redoc', cache_timeout=0), name='schema-redoc'),
]
