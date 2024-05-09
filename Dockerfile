# Use an official Node.js runtime as the base image
FROM node:18.17.0

# Set the working directory in the container
WORKDIR /

# Copy package.json and package-lock.json to the working directory
COPY . .

# Install application dependencies
RUN npm ci

# Build the application
RUN npm run build

# Expose a port (if your application needs to listen on a specific port)
EXPOSE 3000

# Specify the command to run your application
CMD [ "npm", "start" ]