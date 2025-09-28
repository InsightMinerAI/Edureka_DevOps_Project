# Use the base image
FROM devopsedu/webapp

RUN echo "$(pwd)"

# Set the working directory in the container
WORKDIR /var/www/html

ADD website /var/www/html
# Expose the port the app runs on (adjust if necessary)
EXPOSE 80

# Command to run your PHP server
CMD ["php", "-S", "0.0.0.0:80"]
