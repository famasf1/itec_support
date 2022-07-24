from django.shortcuts import render, HttpResponse
from django.http import HttpResponse
from rest_framework import generics, filters
from backendcore.models import Post
from rest_framework.response import Response
from rest_framework.permissions import AllowAny
from rest_framework.decorators import api_view, permission_classes, authentication_classes
from backendcore.serializer import PostSerializers
from django.shortcuts import redirect

# Create your views here.

@permission_classes([AllowAny],)
#@authentication_classes([])
class SearchAPIView(generics.ListCreateAPIView):
    filter_backends = (filters.SearchFilter)
    queryset = Post.objects.all()
    serializer_class = PostSerializers
    search_fields = ['title', 'category', 'tags']


