# Use an official Python runtime as a parent image
FROM python:3.9-slim

# Set the working directory in the container
WORKDIR /app

# Copy the current directory contents into the container at /app
COPY . /app

# Install any needed packages specified in requirements.txt
RUN pip install --no-cache-dir -r requirements.txt

# Make port 5000 available to the world outside this container
EXPOSE 5000

# ENV URI ="mongodb://localhost:27017"
ENV SECRET_KEY = '5476347657657454353426346'
ENV OPENAI_API_KEY = ''
ENV TWILIO_ACCOUNT_SID = ''
ENV TWILIO_AUTH = ''
ENV TWILIO_PHONE_NUMBER = '+14155238886'

# Run app.py when the container launches
CMD ["python", "app.py"]