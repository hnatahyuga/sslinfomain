# Use an official Node.js runtime as a base image
FROM node:18.17.1-alpine

# Set the working directory in the container
WORKDIR /usr/src/app

# Copy package.json and package-lock.json to the container
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the rest of the application code to the container
COPY . .

# Expose the port that Next.js will run on
EXPOSE 3000

# Build the Next.js application
#RUN npm run build [There seems to be some issue with the build, hence skipping build step as of now]

# Run the application
CMD ["npm", "run", "dev"]
