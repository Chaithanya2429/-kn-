FROM python:3.10

WORKDIR /app

COPY . .

CMD ["Python","app.py"]