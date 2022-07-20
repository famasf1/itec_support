from django.shortcuts import render, HttpResponse
from django.http import HttpResponse
from rest_framework.response import Response
from rest_framework.permissions import AllowAny
from rest_framework.decorators import api_view, permission_classes
# Create your views here.

@api_view(['GET'],)
@permission_classes([AllowAny],)

def hello_world(request):
    print("request received!")
    return HttpResponse("Hello World!")