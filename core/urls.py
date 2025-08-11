"""
URL configuration for core project.

The `urlpatterns` list routes URLs to views. For more information please see:
    https://docs.djangoproject.com/en/5.2/topics/http/urls/
Examples:
Function views
    1. Add an import:  from my_app import views
    2. Add a URL to urlpatterns:  path('', views.home, name='home')
Class-based views
    1. Add an import:  from other_app.views import Home
    2. Add a URL to urlpatterns:  path('', Home.as_view(), name='home')
Including another URLconf
    1. Import the include() function: from django.urls import include, path
    2. Add a URL to urlpatterns:  path('blog/', include('blog.urls'))
"""
from django.contrib import admin
from django.urls import path, include
from django.views.generic import RedirectView
from django.contrib import admin
from django.conf import settings
from django.conf.urls.static import static
from django.urls import path
from django.contrib.auth import views as auth_view

urlpatterns = [
    path('admin/', admin.site.urls),
    path('', include('web.urls')),  # Ya no usamos 'global/', usamos directamente ''
    path('', include('inicio.urls')),
    path('', include('cuentas.urls')),
    path('', include('dashboard.urls')),
    path('', include('fechas.urls')),
    path('', include('inicio.urls')),
    path('', include('inventario.urls')),
    path('', include('ventas.urls')),
    path('', include('productos.urls')),
    path('', include('promociones.urls')),
    path('', include('categorias.urls')),
    path('gmail/', include('gmail_integration.urls')),
    
    
]
if settings.DEBUG:
    urlpatterns += static(settings.STATIC_URL, document_root=settings.STATIC_ROOT)
    urlpatterns += static(settings.MEDIA_URL, document_root=settings.MEDIA_ROOT)
