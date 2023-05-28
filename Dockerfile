# Use the official Python base image with Alpine
FROM python:3.11.2

# Set the working directory inside the container
WORKDIR /visionapp

# Install system dependencies

# Copy the requirements.txt file to the container
COPY requirments.txt .

# Install the Python dependencies
RUN pip install --no-cache-dir -r requirments.txt

# Copy the entire project directory to the container
COPY . .

# Set the environment variable for Python
ENV PYTHONPATH=/visionapp

# Set the startup command to run the Django application
CMD ["python", "visionapp/manage.py", "runserver", "0.0.0.0:80"]
