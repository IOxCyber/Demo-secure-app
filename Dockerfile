# Use an official Python base image
FROM python:3.14.0b1-bookworm

# Set working directory inside container
WORKDIR /app

# Copy local files into the container
COPY . .

RUN apt-get update && \
    apt-get upgrade -y && \
    apt-get clean && rm -rf /var/lib/apt/lists/*

# Install dependencies
RUN pip install flask

# Run the app
CMD ["python", "app.py"]
