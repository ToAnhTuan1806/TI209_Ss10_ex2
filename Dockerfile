# Use Node.js 18 Alpine as the base image

FROM node:18-alpine

# Set the working directory

WORKDIR /app

# Copy package files and install dependencies

COPY package*.json ./
RUN npm install --omit=dev

# Copy application source code

COPY . .

# Set application port

ENV PORT=3000

# Expose application port

EXPOSE 3000

# Start the application

CMD ["node", "server.js"]
