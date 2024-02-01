# Stage 1: Build the Vite Vue.js application
FROM node:18.16.1-alpine AS builder

WORKDIR /app

# Copy package.json and package-lock.json
COPY package.json .

# Define argument for build env
ARG BUILD_ENV=test

# Install dependencies
RUN npm install

# Copy the rest of the application code
COPY . .

# Build the application
RUN npm run build:${BUILD_ENV}

# Stage 2: Setup Nginx and copy built files
FROM nginx:1.25.1

# Copy Nginx configuration file with URL rewriting
COPY nginx.conf /etc/nginx/nginx.conf

# Copy the built application from the builder stage
COPY --from=builder /app/dist /usr/share/app-deploy

# Expose the default Nginx port
EXPOSE 80

# Start Nginx server
CMD ["nginx", "-g", "daemon off;"]
