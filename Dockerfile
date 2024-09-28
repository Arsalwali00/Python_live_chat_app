# Use Python 3.9 as the base image
FROM python:3.9-slim

# Set the working directory inside the container
WORKDIR /app

# Copy the requirements file into the container
COPY requirements.txt /app/

# Install the necessary dependencies
RUN pip install -r requirements.txt

# Copy the rest of the application code
COPY . /app

# Expose port 5000 to the host
EXPOSE 5000

# Command to run the Flask app
CMD ["python", "chatroom.py"]
