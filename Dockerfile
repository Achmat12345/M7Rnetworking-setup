# M7Rnetworking Dockerfile
FROM node:18-alpine

# Set working directory
WORKDIR /app

# Copy the entire M7Rnetworking directory
COPY M7Rnetworking/ ./

# Install root dependencies first
RUN npm install

# Install server dependencies
RUN cd server && npm install

# Expose port
EXPOSE 5000

# Set environment
ENV NODE_ENV=production

# Start the application
CMD ["npm", "start"]
