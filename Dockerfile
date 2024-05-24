FROM python:3
COPY requirements.txt /tmp/
RUN pip install --no-cache-dir -r requirements.txt
COPY . .

RUN python manage.py migrate

EXPOSE 8001
CMD ["python", "manage.py","runserver","0.0.0.0:8001"]
