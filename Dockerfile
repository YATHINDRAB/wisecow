# Use an official Debian image as a base
FROM debian:bullseye-slim

# Set the working directory to /app
WORKDIR /app

# Install necessary packages
RUN apt-get update && apt-get install -y netcat-openbsd fortune cowsay && rm -rf /var/lib/apt/lists/*

# Copy the script and response file into the container
COPY wisecow.sh /app/
COPY response /app/

# Make port 4499 available to the world outside this container
EXPOSE 4499

# Run the Wisecow script
CMD ["./wisecow.sh"]

