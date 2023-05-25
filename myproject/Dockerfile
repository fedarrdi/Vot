# Use the official Python base image
FROM python:3

# Set the working directory inside the container
WORKDIR /app

# Copy the application files to the container
COPY . /app

# Create a virtual environment and activate it
RUN python -m venv venv
RUN /bin/bash -c "source venv/bin/activate"

# Upgrade pip
RUN pip install --no-cache-dir --upgrade pip

# Install the required packages
RUN pip install --no-cache-dir Flask

# Expose the application port
EXPOSE 5000

# Set the command to run the Flask application
CMD ["python", "app.py"]
