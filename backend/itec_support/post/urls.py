from django import views
from django.urls import path 
from . import views

urlpatterns = [
    path('searchview/',views.SearchAPIView.as_view(), name='Search API'),
]
