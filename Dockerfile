FROM n8nio/n8n

# Switch to root before installing packages
USER root

# Install ffmpeg using Alpine's apk
RUN apk add --no-cache ffmpeg

# Switch back to default non-root user for security
USER node
