FROM python:3.10-slim-bookworm

WORKDIR /app
COPY . .

# Upgrade pip and setuptools to secure versions
RUN pip install --upgrade pip==23.3 setuptools==70.0.0

# Install application dependencies
RUN pip install flask

CMD ["python", "app.py"]
