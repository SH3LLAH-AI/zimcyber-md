# Dockerfile 
FROM node:22

# Set the working directory in the container
WORKDIR /app

# Copy the package*.json files to the working directory
COPY package*.json ./

# Install the dependencies
RUN npm install

# Copy the rest of the application code to the working directory
COPY . .

# Expose the port (if needed)
# EXPOSE 3000

# Run the command to start the bot when the container launches
CMD ["npm", "start"]
