FROM n8nio/n8n

# Install ffmpeg
RUN apt-get update && apt-get install -y ffmpeg
