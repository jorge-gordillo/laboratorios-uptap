from django.urls import path, include


urlpatterns = [
   path('v1/', include('apps.laboratory.urls'), name='v1')
]