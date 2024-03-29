# Use an official Python runtime as a parent image
FROM python:3.8

#Set the working directory inside the container
WORKDIR /app

# Copy the contents of the local directory into the container at /app
COPY . /app

#Install dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Expose port 5000
EXPOSE 5000

# Define environment variable
ENV FLASK_APP=app.py

# Command to run the Flask application
CMD ["flask", "run", "--host=0.0.0.0"]
