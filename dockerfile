# Use an official Node.js runtime as a parent image
FROM node:16

# Set the working directory in the container
WORKDIR /app

# Copy the package.json and package-lock.json into the container at /app
COPY backend/package*.json ./

# Install dependencies in the container
RUN npm install

# Copy the rest of your application code into the container
COPY backend ./

# Define the command to run the application
CMD ["node", "server.js"]

# Expose the port your application is listening on
EXPOSE 3000

