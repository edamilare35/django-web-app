
from django.contrib import admin
from django.urls import path, include

urlpatterns = [
    path('admin/', http://admin.site.urls),
    path('', include('app.urls')),