# Use lightweight Nginx image
FROM nginx:alpine

# Install git
RUN apk add --no-cache git

# Remove default nginx content
RUN rm -rf /usr/share/nginx/html/*

# Clone the repository
RUN git clone https://github.com/steven2358/awesome-generative-ai.git /usr/share/nginx/html

# Expose HTTP port
EXPOSE 80

# Start nginx
CMD ["nginx", "-g", "daemon off;"]
