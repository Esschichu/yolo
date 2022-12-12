FROM node:12-alpine

# Create a directory for the application code
RUN mkdir -p /usr/src/app

# Set the working directory
WORKDIR /usr/src/app

# Copy the application code
COPY . /usr/src/app

# Install the dependencies
RUN npm install

# Expose the port that the application will run on
EXPOSE 5000

# Start the application
CMD ["npm", "start"]