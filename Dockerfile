# Base Image
FROM python:3.10.8

# Working directory
WORKDIR /app

# Copy requirements file and install dependencies
COPY require.txt require.txt
RUN pip install --no-cache-dir -r require.txt

# Copy the rest of the project files
COPY . .

# Expose the server port
EXPOSE 8080

# Command to start the server
CMD ["waitress-serve", "--host=0.0.0.0", "--port=8080", "app:app"]