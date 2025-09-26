# Use the base image
FROM devopsedu/webapp

# Set the working directory in the container
WORKDIR /var/www/html

# Copy your PHP website files into the container
ADD /tmp/my_repo/ /var/www/html

# Expose the port the app runs on (adjust if necessary)
EXPOSE 80

# Command to run your PHP server
CMD ["php", "-S", "0.0.0.0:80"]
