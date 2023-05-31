from django.urls import path

from commerce.api import api

urlpatterns = [path("api/", api.api.urls)]
