FROM python:3.12-slim
WORKDIR /app
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt
COPY source.zip .
RUN python -m zipfile -e source.zip /app
EXPOSE 3000
USER 1001
CMD ["gunicorn", "app:app", "--bind", "0.0.0.0:3000"]
