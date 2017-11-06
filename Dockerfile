FROM python:2.7-alpine
EXPOSE 8080
WORKDIR /app
COPY requirements.txt /app
RUN pip install -r requirements.txt --proxy http://34.214.21.29:8080/
COPY . /app
CMD ["python", "pywebapp.py", "8080"]
