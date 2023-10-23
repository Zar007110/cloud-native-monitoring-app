# Use an official Python runtime as a parent image
FROM python:3.9-slim-buster

WORKDIR /app

# Copy the requirements file first
COPY requirements.txt .

# Install the required packages from requirements.txt
RUN pip3 install --no-cache-dir -r requirements.txt

# Copy the rest of the application code
COPY . .

# Set environment variables
ENV FLASK_RUN_HOST=0.0.0.0

# Expose port 5000
EXPOSE 5000

# Define the command to run your Flask app
CMD ["flask", "run"]
