# Use Node.js as base image
FROM node:lts-alpine3.18

ENV PORT 80

# Set the working directory in the container
WORKDIR /app

# Copy package.json and package-lock.json
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the rest of the application
COPY . .

# Expose port 80
EXPOSE 80

# Command to run the application
CMD ["node", "index.js"]