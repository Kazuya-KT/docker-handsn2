# Use the Node.js base image
FROM node:14

# Set the Current Working Directory inside the container
WORKDIR /app

# Copy package.json and package-lock.json
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the source from the current directory to the Working Directory inside the container
COPY . .

# Expose the port the app runs on
EXPOSE 3000

# Command to run the executable
CMD ["npm", "start"]

