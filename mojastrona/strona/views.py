from django.shortcuts import render
from .models import Video

def index(request):
    videos = Video.objects.all()
    return render(request, 'index.html', context={'videos': videos})

def about(request):
    videos = Video.objects.all()
    return render(request, 'about.html', context={'videos': videos})

def subscription(request):
    videos = Video.objects.all()
    return render(request, 'subscription.html', context={'videos': videos})