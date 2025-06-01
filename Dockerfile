FROM n8nio/n8n

# Use Alpine package manager (apk) instead of apt-get
USER root
RUN apk update && apk add --no-cache ffmpeg

# Switch back to n8n user (important for permissions)
USER node
