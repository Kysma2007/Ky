FROM node:20-alpine

# Устанавливаем FFmpeg
RUN apk add --no-cache ffmpeg

# Устанавливаем n8n глобально
RUN npm install -g n8n

# Создаем пользователя node (как в оригинале)
RUN addgroup -g 1000 -S node && adduser -u 1000 -S node -G node

USER node

# Запускаем n8n
CMD ["n8n", "start"]
