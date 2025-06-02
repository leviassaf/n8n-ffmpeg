# Base image with n8n
FROM n8nio/n8n:latest

# Install ffmpeg (Alpine-compatible)
USER root
RUN apk add --no-cache ffmpeg

# Restore n8n user
USER node
