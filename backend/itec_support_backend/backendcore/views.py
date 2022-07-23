from django.shortcuts import render, HttpResponse
from django.http import HttpResponse
from rest_framework import generics, filters
from backendcore.models import Post
from rest_framework.response import Response
from rest_framework.permissions import AllowAny
from rest_framework.decorators import api_view, permission_classes
from backendcore.serializer import PostSerializers


# Create your views here.

#@api_view(['GET'],)
#@permission_classes([AllowAny],)

class SearchAPIView(generics.ListCreateAPIView):
    filter_backends = (filters.SearchFilter)
    queryset = Post.objects.all()
    serializer_class = PostSerializers

    