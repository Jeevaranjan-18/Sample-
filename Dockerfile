# Use official NGINX base image
FROM nginx:alpine

# Copy website files to container
COPY index.html /usr/share/nginx/html/index.html

# Expose port 80
EXPOSE 80
