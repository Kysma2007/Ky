FROM node:20-alpine

# Устанавливаем FFmpeg
RUN apk add --no-cache ffmpeg

# Устанавливаем n8n глобально
RUN npm install -g n8n

# Группа и пользователь node уже есть в образе, просто переключаемся
USER node

# Запускаем n8n
CMD ["n8n", "start"]
