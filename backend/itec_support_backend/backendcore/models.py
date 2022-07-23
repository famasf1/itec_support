
from django.db import models
from django.conf import settings

## Catelogue 
### Referring to this article
### https://medium.com/flutter-community/django-search-flutter-1cb3e8a5db1a

## TODO - read our own documentations

class Category(models.Model):
    name = models.CharField(max_length=50)
    def __str__(self):
        return self.name

class Profile(models.Model):
    user = models.OneToOneField(
        settings.AUTH_USER_MODEL,
        on_delete=models.PROTECT,
    )


class Tag(models.Model):
    name = models.CharField(max_length=50, unique=True)
    


class Post(models.Model):
    title = models.CharField(max_length=300, unique=True)
    slug = models.SlugField(max_length=255, unique=True)
    body = models.TextField()
    author = models.ForeignKey(Profile, on_delete=models.PROTECT)
    tags = models.ManyToManyField(Tag, blank=True)
    category = models.ForeignKey(Category, on_delete=models.CASCADE)

    def __str__(self):
        return self.title

