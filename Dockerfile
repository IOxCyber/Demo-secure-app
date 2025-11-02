FROM python:3.10-slim-bookworm

WORKDIR /app
COPY . .

# Upgrade pip and setup tools to secure versions
# RUN pip install --upgrade pip==23.3 setuptools>=78.1.1
RUN pip install --upgrade "setuptools>=78.1.1"

# Install application dependencies
RUN pip install flask

CMD ["python", "app.py"]
