# Use Nginx to serve static files
FROM nginx:alpine

# Remove default nginx index page
RUN rm -rf /usr/share/nginx/html/*

# Copy your HTML file into the nginx directory
COPY index.html /usr/share/nginx/html/

# Expose port 80
EXPOSE 80


# docker build -t html-form-app .
# docker run -d -p 8080:80 html-form-app