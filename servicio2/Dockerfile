FROM python:3.9-slim
WORKDIR /app
COPY ./servicio1/requirements.txt /app/requirements.txt
RUN pip install -r requirements.txt
COPY ./servicio2 /app
CMD ["python", "app.py"]