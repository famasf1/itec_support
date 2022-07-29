from django.contrib import admin
from django.contrib.auth.models import *
from django.contrib.auth.models import Group, User
from .models import Post

# Register your models here.

@admin.register(Post)
class PostAdmin(admin.ModelAdmin):
    pass

admin.site.site_header = "ITEC Support"
admin.site.site_title = "ITEC Support"
admin.site.index_title = "Admin"

admin.site.unregister(Group)