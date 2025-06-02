FROM n8nio/n8n

# Install ffmpeg using Alpine package manager
RUN apk add --no-cache ffmpeg
