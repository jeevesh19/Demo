# Use the official Node.js image as a base image
FROM node:20-alpine

# Set the working directory inside the container
WORKDIR /app

# Copy package.json and package-lock.json (or yarn.lock) files
COPY index.js ./

# Install application dependencies
RUN npm install

# Copy the rest of the application code
COPY . .

# Expose the port that the application will run on
EXPOSE 3000

# Command to run the application
CMD ["npm", "start"]
