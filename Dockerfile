# Use official node image
FROM node:18-alpine

# Create app directory
WORKDIR /app

# Copy package files and install dependencies
COPY package*.json ./
RUN npm ci --no-audit --no-fund

# Copy app source
COPY . .

# Expose the port the app listens on
# According to README, default is 3000
EXPOSE 3000

# Define health check (optional)
HEALTHCHECK --interval=30s --timeout=5s --start-period=10s --retries=3 \
  CMD wget --no-verbose --spider http://localhost:3000/ || exit 1

# Start the app
CMD ["npm", "start"]
