# Use the official Nginx image from the Docker Hub
FROM nginx:alpine

# Copy your index.html into the container
COPY index.html /usr/share/nginx/html/index.html

# Expose port 80
EXPOSE 80
