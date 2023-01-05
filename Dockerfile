FROM python:3.8-slim

# Install system packages and dependencies
RUN apt-get update && apt-get install -y --no-install-recommends \
    build-essential \
    libssl-dev \
    libffi-dev \
    python3-dev \
    python3-pip \
    nginx \
  && rm -rf /var/lib/apt/lists/*

# Set the working directory
WORKDIR /app

# Copy the requirements file and install the requirements
COPY requirements.txt .
RUN pip install -r requirements.txt

# Copy the application code
COPY . .

# Expose the port that gunicorn will listen on
EXPOSE 8000

# Run the gunicorn server to serve the app
CMD ["gunicorn", "--bind", "0.0.0.0:8000", "wsgi:server"]
