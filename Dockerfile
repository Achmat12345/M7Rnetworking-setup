# M7Rnetworking Dockerfile
FROM node:18-alpine

# Set working directory
WORKDIR /app

# Copy package files from subdirectory
COPY M7Rnetworking/server/package*.json ./server/
COPY M7Rnetworking/package*.json ./

# Install dependencies
RUN cd server && npm ci --only=production

# Copy application code from subdirectory
COPY M7Rnetworking/server/ ./server/
COPY M7Rnetworking/client/ ./client/

# Expose port
EXPOSE 5000

# Set environment
ENV NODE_ENV=production

# Start the application
CMD ["node", "server/index.js"]
