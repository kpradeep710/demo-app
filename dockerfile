# Use the official NGINX image from Docker Hub
FROM nginx:latest

RUN apt-get update && apt-get install nginx -y

# Copy website files to the default NGINX web root
COPY index.html /var/www/html

# Expose port 80 to allow external access
EXPOSE 80

# Start NGINX
CMD ["nginx", "-g", "daemon off;"]
