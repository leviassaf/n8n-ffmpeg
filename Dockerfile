FROM node:20-bullseye

# Install ffmpeg
RUN apt-get update && apt-get install -y ffmpeg

# Install n8n
RUN npm install -g n8n

# Set working directory
WORKDIR /home/node

# Create a user to run n8n as non-root
RUN useradd -m -s /bin/bash node
USER node

# Expose port
EXPOSE 5678

# Start n8n
CMD ["n8n"]
