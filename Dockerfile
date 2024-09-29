# Use the official Node.js image
FROM node:20

# Create app directory
WORKDIR /usr/src/app

# Copy package.json and package-lock.json if available from the project root
COPY package*.json ./

# Install app dependencies
RUN npm install --production

# Copy the entire project directory contents to the app directory
COPY . .

# Copy the .env file
COPY .env .env

# Bind to the specified ports
EXPOSE 3100
EXPOSE 3110

# Command to run the app
CMD ["node", "api/server.js"]
