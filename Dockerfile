# Use the official Node.js runtime as the base image
FROM node:14

# Set the working directory
WORKDIR /usr/src/app

# Update npm to latest version
RUN npm install -g npm@latest

# Copy the project files into the container
COPY . .

# Install the project dependencies
RUN npm install

# Build the app
RUN npm run build

# Expose port 3000 for the app
EXPOSE 3000

# Start the app
CMD ["npm", "start"]
