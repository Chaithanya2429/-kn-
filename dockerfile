FROM python:3.10

WORKDIR / python

COPY . .

CMD ["python","python.py"]