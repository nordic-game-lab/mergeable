# Base image
FROM node:20.19.5-alpine

LABEL org.opencontainers.image.vendor="Nordic Game Lab, LLC"
LABEL org.opencontainers.image.licenses=AGPL-3.0-only

# Set working directory
WORKDIR /app

# Copy package.json, package-lock.json, and source code
COPY package*.json ./

# Install dependencies using npm
RUN npm install

# Copy remaining source code
COPY . .

# Expose port 3000
EXPOSE 3000

# Start the application
CMD ["npm", "start"]
