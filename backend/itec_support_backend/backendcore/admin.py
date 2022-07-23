from django.contrib import admin
from .models import Category, Post, Tag, Profile
# Register your models here.

class New_Post(admin.ModelAdmin):
    fields = ['title', 'slug','body','author','tags','category']

admin.site.register(Post, New_Post)