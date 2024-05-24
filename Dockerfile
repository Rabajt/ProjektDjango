FROM python:3

COPY . .

RUN pip install --no-cache-dir -r requirements.txt

RUN python manage.py migrate

EXPOSE 8002
CMD ["python", "manage.py","runserver","0.0.0.0:8002"]
