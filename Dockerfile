# Start from official n8n image
FROM n8nio/n8n

# Switch to root for package install
USER root

# Install ffmpeg (Alpine-based)
RUN apk add --no-cache ffmpeg

# OPTIONAL: Fix file permissions warning
ENV N8N_ENFORCE_SETTINGS_FILE_PERMISSIONS=false

# Switch back to node to run the app safely
USER node
