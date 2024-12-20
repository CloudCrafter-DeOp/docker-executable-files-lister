FROM alpine:latest

# Устанавливаем bash и find
RUN apk add --no-cache bash findutils

# Устанавливаем рабочую директорию
WORKDIR /app

# Копируем ваш скрипт в контейнер
COPY /vendor/list_executables.sh /app/vendor/

# Делаем скрипт исполнимым
RUN chmod +x /app/vendor/list_executables.sh

# Указываем запуск через bash
CMD ["bash", "/app/vendor/list_executables.sh"]
