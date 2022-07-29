from django.shortcuts import render
from numpy import generic
from rest_framework import generics, filters
from post.models import Post
from post.serializer import PostSerializers
from rest_framework.parsers import JSONParser
from rest_framework.renderers import OrderedDict

# Create your views here.



class SearchAPIView(generics.ListCreateAPIView):
    search_fields = ['title']
    filter_backends = (filters.SearchFilter,)
    queryset = Post.objects.all()
    serializer_class = PostSerializers