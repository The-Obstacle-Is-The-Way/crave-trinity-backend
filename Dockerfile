# Dockerfile
# ------------------------------------------------------------------------------
# A lightweight Docker image for the CRAVE Trinity Backend.
#
# This Dockerfile uses Python 3.11-slim and installs dependencies in two phases:
# 1. Install system-level build dependencies required for compiling extensions (e.g., g++, ninja-build).
# 2. Upgrade pip, install torch first, then install the rest of the Python dependencies.
#
# This approach guarantees that xformers (which requires a C++ compiler) can build its wheels.
# ------------------------------------------------------------------------------
    FROM python:3.11-slim

    # Prevent Python from writing pyc files and ensure unbuffered output.
    ENV PYTHONDONTWRITEBYTECODE=1
    ENV PYTHONUNBUFFERED=1
    
    # Install system-level build dependencies: build-essential (g++, etc.) and ninja-build.
    RUN apt-get update && \
        apt-get install -y build-essential ninja-build && \
        apt-get clean && rm -rf /var/lib/apt/lists/*
    
    # Set the working directory inside the container.
    WORKDIR /app
    
    # Copy the requirements file first to leverage Docker layer caching.
    COPY requirements.txt .
    
    # Phase 1: Upgrade pip and install torch explicitly so that xformers finds torch during build.
    RUN pip install --upgrade pip && \
        pip install --no-cache-dir torch==2.0.1
    
    # Phase 2: Install the rest of the dependencies.
    RUN pip install --no-cache-dir -r requirements.txt
    
    # Copy the entire application code into the container.
    COPY . .
    
    # Expose the application port.
    EXPOSE 8000
    
    # Command to run the FastAPI application.
    CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "8000"]