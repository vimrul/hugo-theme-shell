# Use Hugo extended base image
FROM klakegg/hugo:ext-alpine as builder

# Set working directory
WORKDIR /app

# Copy all files into the container
COPY . /app

# Expose Hugo server port
EXPOSE 1313

# Command to run Hugo server
CMD ["hugo", "server", "-w", "-D", "--bind", "0.0.0.0", "--baseURL", "/"]
