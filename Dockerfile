# Use an official Node.js runtime as the base image
FROM node:22

# Set working directory in the container
WORKDIR /app

# Copy package.json and package-lock.json
COPY package*.json ./

# Install dependencies
RUN npm ci

# Copy the rest of the application code
COPY . .

# Build the application
RUN npm run build

# Expose the port your app runs on (adjust if needed)
EXPOSE 3000

# Command to run the application
CMD ["npm", "start"]