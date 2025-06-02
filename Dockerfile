FROM n8nio/n8n

# Switch to root to install ffmpeg
USER root

# Update package list and install ffmpeg
RUN apt-get update && apt-get install -y ffmpeg

# Switch back to the node user
USER node
