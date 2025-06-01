FROM n8nio/n8n

USER root

# ✅ Use Alpine package manager instead of apt-get
RUN apk update && apk add --no-cache ffmpeg

USER node
