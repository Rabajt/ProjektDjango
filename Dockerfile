FROM python:3
WORKDIR /app
COPY . /app
RUN pip install --no-cache-dir -r requirements.txt
EXPOSE 8000
RUN python manage.py migrate
RUN python manage.py collectstatic --noinput
ENV DJANGO_SETTINGS_MODULE=mojastrona.settings
CMD ["python","manage.py","runserver","0.0.0.0:8002"]
