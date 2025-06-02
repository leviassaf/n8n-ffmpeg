FROM n8nio/n8n

# Switch to root before package installation
USER root

# Install ffmpeg as root using Alpine's package manager
RUN apk add --no-cache ffmpeg

# Return to default non-root user for safety
USER node
