# Use the official NGINX image as the base image
FROM nginx:alpine

# Copy the static HTML file to the default nginx directory
COPY ./index.html /usr/share/nginx/html/index.html

# Expose port 80 to be accessible outside the container
EXPOSE 80

# Start nginx server
CMD ["nginx", "-g", "daemon off;"]
