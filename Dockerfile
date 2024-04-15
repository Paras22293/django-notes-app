# Use a specific tag for the Python image to ensure consistency
FROM python:3.9

# Set the working directory inside the container
WORKDIR /app

# Copy just the requirements file first and install dependencies
COPY requirements.txt .

# Install the Python dependencies
RUN pip install -r requirements.txt

# Copy the rest of the application code
COPY . .

# Expose the port your app runs on
EXPOSE 8000

# Command to run the application
CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]
