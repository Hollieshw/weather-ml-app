FROM python:3.9-slim

WORKDIR / app
COPY requirments.txt requirements.txt 
RUN ./app
RUN pip install -r requirments.txt
EXPOSE 5000
CMD ["python3","app.py"]
