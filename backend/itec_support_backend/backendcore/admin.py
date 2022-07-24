from django.contrib import admin
from .models import Category, Post, Tag, Profile


# Register your models here.


admin.site.site_header = "ITEC Support"
admin.site.site_title = "ITEC Support"
admin.site.site_url = "itec-support"

@admin.register(Post)
class New_Post(admin.ModelAdmin):
    fields = ['title', 'slug','body','author','tags','category']

@admin.register(Tag)
class New_Tag(admin.ModelAdmin):
    fields = ['name']

@admin.register(Profile)
class New_Author(admin.ModelAdmin):
    fields = ['user']

@admin.register(Category)
class New_Catelogue(admin.ModelAdmin):
    fields = ['name']


### remove group app from admin page
from django.contrib.auth.models import Group

admin.site.unregister(Group)