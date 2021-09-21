from django.shortcuts import render

def index(request):
    data = {
        'title': 'Главная страница',
        'values': ['Some', 'hi', '123'],
        'obj': {
            'car': 'bmw',
            'age': '31',
            'hobby': 'it'
        }
    }
    return render(request, 'main/index.html', data)

def about(request):
    return render(request, 'main/about.html')