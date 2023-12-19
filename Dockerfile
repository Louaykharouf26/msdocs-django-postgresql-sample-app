FROM python:3.8

WORKDIR /app

COPY requirements.txt .

COPY manage.py .

RUN pip install --no-cache-dir -r requirements.txt

COPY . .

CMD ["sh", "-c", "python manage.py migrate && python manage.py runserver 0.0.0.0:8000"]
