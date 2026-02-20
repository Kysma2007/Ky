FROM n8nio/n8n:latest

USER root

# Устанавливаем FFmpeg через apk (для Alpine)
RUN apk add --no-cache ffmpeg

USER node
