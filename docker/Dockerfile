# Use the official Nginx image as the base image
FROM nginx:latest

# Set the ownership of the directory where nginx stores temporary files
RUN mkdir -p /var/cache/nginx/client_temp \
    && chown -R nginx:nginx /var/cache/nginx

# Create a temporary directory for copying files with appropriate permissions
RUN mkdir -p /tmp/nginx \
    && chown -R nginx:nginx /tmp/nginx

# Copy the custom index.html to the temporary directory
COPY index.html /tmp/nginx/index.html

# Switch to the root user to copy the file to the Nginx HTML directory
USER root
RUN cp /tmp/nginx/index.html /usr/share/nginx/html/index.html \
    && chown nginx:nginx /usr/share/nginx/html/index.html

# Clean up temporary directory
RUN rm -rf /tmp/nginx

# Switch back to the nginx user for running the container
USER nginx

# Expose port 80
EXPOSE 80

# Start the Nginx server with daemon off
CMD ["nginx", "-g", "daemon off;"]
