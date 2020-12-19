# Use the official Node 10 image
FROM registry.access.redhat.com/ubi8/nodejs-10

# Change directory to /usr/src/app
WORKDIR /usr/src/app

# Copy the application source code
COPY . .

# Change directory to site/
WORKDIR site/

# Install dependencies
RUN npm install

# Allow traffic on port 8080
EXPOSE 8080

# Start the application
CMD [ "npm", "start" ]
