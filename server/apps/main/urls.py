from django.urls import path, include
from apps.main.views import main

urlpatterns = [
   path('api/v1/', include('apps.laboratory.urls'), name='v1'),
   path('', main, name='main'),
]