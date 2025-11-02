FROM python:3.10-slim-bookworm

WORKDIR /app
COPY . .

# Upgrade pip and setuptools safely (pin exact versions for consistency)
RUN pip install --no-cache-dir --upgrade pip==23.3.1 setuptools==78.1.1

# Install app dependencies
RUN pip install --no-cache-dir flask

CMD ["python", "app.py"]
