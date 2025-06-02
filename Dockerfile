# Start from official n8n image
FROM n8nio/n8n:latest

# Switch to root to install dependencies
USER root

# Install ffmpeg using apt
RUN apt-get update && apt-get install -y ffmpeg && apt-get clean

# Set back to n8n user
USER node
