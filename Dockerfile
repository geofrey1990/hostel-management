# Use an official PHP runtime as a parent image
FROM php:7.4-ubuntu

# Set the working directory to /hotel-management
WORKDIR /hotel-management

# Copy the current directory contents into the container at .
COPY . . 

# Install any needed packages specified in requirements.txt
RUN apt-get update && apt-get install -y \
    # Add any additional packages you need here

# Make port 80 available to the world outside this container
EXPOSE 80

# Run app.py when the container launches
CMD ["ubuntu-foreground"]
