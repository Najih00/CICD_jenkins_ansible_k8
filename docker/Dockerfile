# Use the official Nginx image as the base image
FROM nginx:latest

# Set the ownership of the directories needed by nginx
RUN mkdir -p /var/cache/nginx/proxy_temp \
    && chown -R nginx:nginx /var/cache/nginx \
    && chmod -R 755 /var/cache/nginx

# Copy the custom index.html to the Nginx default HTML directory
COPY index.html /usr/share/nginx/html/

# Expose port 80
EXPOSE 80
