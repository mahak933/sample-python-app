
FROM python:3.8.0-alpine

WORKDIR /app



COPY requirements.txt /app/
RUN pip install --no-cache-dir -r requirements.txt || true

COPY src/ /app/



EXPOSE 5001

CMD ["python", "app.py"]
