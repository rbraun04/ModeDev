# Use an official Node.js runtime as the base image
FROM node:14

# Set the working directory in the container
WORKDIR /src

# Copy package.json and package-lock.json to the working directory
COPY package*.json ./

# Install application dependencies
RUN npm ci

# Copy the entire application to the container
COPY . .

# Expose a port (if your application needs to listen on a specific port)
EXPOSE 3000

# Specify the command to run your application
CMD [ "npm", "start" ]