FROM python:3.9-slim

WORKDIR /app

COPY requirements.txt requirements.txt
 

RUN pip install --no-cache-dir -r requirements.txt

<<<<<<< HEAD
COPY . .
=======
COPY app.py app.py
>>>>>>> a35f567f10ec7f3bfbf4e4336ec5df887dc9b265

EXPOSE 5000

CMD ["python3","app.py"]
