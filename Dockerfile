# Start from official Alpine-based n8n image
FROM n8nio/n8n:latest

# Switch to root to install packages
USER root

# Install ffmpeg via Alpine package manager
RUN apk update && apk add --no-cache ffmpeg

# Switch back to default n8n user
USER node
