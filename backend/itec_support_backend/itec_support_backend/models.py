from django.db import models

# Create your models here.

## Catelogue 
### Referring to this article
### https://medium.com/flutter-community/django-search-flutter-1cb3e8a5db1a

## TODO - read our own documentations

class Category(models.Model):
    name = models.CharField(max_length=50)
    def __str__(self):
        return self.name

