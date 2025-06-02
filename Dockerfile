FROM node:20-bullseye

# Install ffmpeg
RUN apt-get update && apt-get install -y ffmpeg

# Install n8n globally via npm
RUN npm install -g n8n

# Set working directory
WORKDIR /home/node

# Use the existing 'node' user from the image
USER node

# Expose n8n port
EXPOSE 5678

# Start n8n
CMD ["n8n"]
