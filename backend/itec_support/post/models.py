from django.db import models
from django.contrib.auth.models import User

# Create your models here.

STATUS = (
    (0,"Draft"),
    (1,"Publish")
)

class Post(models.Model):
    title = models.CharField(max_length=2000, unique=True,)
    content = models.TextField(default='')
    author = models.ForeignKey(User, on_delete=models.CASCADE, related_name='guide_post', blank=True, default='Admin')
    updated_on = models.DateTimeField(auto_now=True)
    create_on = models.DateTimeField(auto_now_add=True)
    status = models.IntegerField(choices=STATUS, default=0)

    class Meta:
        ordering = ['-create_on']

    def __str__(self):
        return self.title