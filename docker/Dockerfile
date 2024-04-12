# Use the official Nginx image as the base image
FROM nginx:latest

# Set the ownership of the directory where nginx stores temporary files
RUN mkdir -p /var/cache/nginx/client_temp \
    && chown -R nginx:nginx /var/cache/nginx

# Copy the custom index.html to the Nginx default HTML directory
COPY index.html /usr/share/nginx/html/

# Expose port 80
EXPOSE 80
