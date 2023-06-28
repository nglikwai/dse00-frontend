# Use an official Node.js LTS (Long Term Support) image as the base
FROM node:lts-alpine

# Set the working directory in the container
WORKDIR /app

# Copy package.json and package-lock.json (if available)
COPY package*.json ./

# Install dependencies
RUN npm ci

# Copy the entire project directory into the container
COPY . .

# Build the Next.js application
RUN npm run build

# Expose the desired port (default is 3000 for Next.js)
EXPOSE 3000

# Start the Next.js application
CMD ["npm", "start"]
