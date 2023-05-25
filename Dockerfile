# Use the official Python base image
FROM python:3.9-slim

# Set the working directory inside the container
WORKDIR /app

# Create a virtual environment and activate it
RUN python -m venv venv
RUN /bin/bash -c "source venv/bin/activate"

#UP date PIP
RUN pip install --no-cache-dir --upgrade pip

# Copy the requirements file to the working directory
COPY requirements.txt .

# Install the project dependencies
RUN pip install --no-cache-dir Flask
RUN pip install --no-cache-dir requests 

# Copy the application code to the working directory
COPY . .

# Expose the port on which the Flask application will run
EXPOSE 5000

# Set the entrypoint command to run the Flask application
CMD [ "python", "app.py" ]


