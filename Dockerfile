# Use the official n8n image (Alpine-based)
FROM n8nio/n8n:latest

# Switch to root user to install packages
USER root

# Install ffmpeg via Alpine package manager
RUN apk add --no-cache ffmpeg

# Switch back to node user
USER node
