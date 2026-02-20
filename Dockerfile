FROM n8nio/n8n:latest

USER root

# Устанавливаем bash (на всякий случай)
RUN apk add --no-cache bash || apt-get update && apt-get install -y ffmpeg

# Проверяем, что FFmpeg установился
RUN ffmpeg -version || echo "FFmpeg not found"

USER node
