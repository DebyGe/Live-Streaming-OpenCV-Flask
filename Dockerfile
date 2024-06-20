# Use a base image with Python and OpenCV
FROM python:3

# Install dependencies, including graphics libraries
RUN apt-get update && \
    apt-get install -y libgl1-mesa-glx && \
    pip install opencv-python && \
    pip install Flask

# Copy Html templates
COPY templates/index.html /app/templates/index.html

# Copy your Python script into the container
COPY app.py /app/app.py

# Set the working directory
WORKDIR /app

# expose port 5000 
EXPOSE 5000

# Run your Python script
CMD ["python", "app.py"] 
