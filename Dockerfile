FROM n8nio/n8n

# Switch to root to install system packages
USER root

# Install ffmpeg
RUN apt-get update && apt-get install -y ffmpeg

# Switch back to node user for runtime
USER node
