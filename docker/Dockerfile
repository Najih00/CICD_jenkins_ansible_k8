# Use the official Nginx image as the base image
FROM nginx:latest

# Expose port 8080
EXPOSE 8080

# Set permissions for nginx directories
RUN touch /run/nginx.pid && \
    chgrp -R 0 /var/log/nginx /run/nginx.pid && \
    chmod -R g+rwx /var/log/nginx /run/nginx.pid

# Copy the index.html file
ADD index.html /usr/share/nginx/html

# Set user to non-root
USER 1001

# Start Nginx
CMD ["nginx", "-g", "daemon off;"]
