FROM python:3.11-slim

RUN apt-get update && apt-get install -y \
    chromium \
    && rm -rf /var/lib/apt/lists/*

WORKDIR /app
COPY . .
RUN pip install -r requirements.txt

CMD ["python", "api_solver.py", "--host", "0.0.0.0", "--port", "8000"]
