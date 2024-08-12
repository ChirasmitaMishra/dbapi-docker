# Use the official Python image from the Docker Hub
FROM python:3.8-slim

# Set the working directory
WORKDIR /dbapi

# Copy the requirements file into the container
COPY requirements.txt .

# Install any needed packages specified in requirements.txt
RUN pip install --no-cache-dir -r requirements.txt

# Copy the rest of the application code
COPY dbapi.py .

# Make port 5130 available to the world outside this container
EXPOSE 5230

# Define environment variable
#ENV NAME World

# Run dbapi.py when the container launches
CMD ["python", "dbapi.py"]

