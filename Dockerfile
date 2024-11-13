# Use the official Python image from DockerHub
FROM python:3.9

# Set the working directory
WORKDIR /app

# Copy the current directory contents into the container at /app
COPY . /app

# Install the required Python packages
RUN pip install -r requirements.txt

# Set the environment variable for Flask
ENV FLASK_APP=app.py

# Expose the port Flask runs on
EXPOSE 5000

# Define the default command to run when the container starts
CMD ["flask", "run", "--host=0.0.0.0", "--port=5000"]

# Add OCI label
LABEL org.opencontainers.image.source=https://github.com/KobiVG/docker-build-demo-KobeVanGestel
