from email.headerregistry import Group
from django.contrib import admin
from django.contrib.auth.models import *
from django.contrib.auth.models import Group
from .models import Post

# Register your models here.

@admin.register(Post)
class PostAdmin(admin.ModelAdmin):
    pass

admin.site.unregister(Group)