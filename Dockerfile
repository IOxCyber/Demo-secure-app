# Use an official Python base image
FROM python:3.10-slim

# Set working directory inside container
WORKDIR /app

# Copy local files into the container
COPY . .

# Install dependencies
RUN pip install flask
RUN pip install --upgrade setuptools>=70.0.0

# Run the app
CMD ["python", "app.py"]
