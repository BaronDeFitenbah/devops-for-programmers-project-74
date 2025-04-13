# Базовый образ
FROM node:20.12.2

# Рабочая директория внутри контейнера
WORKDIR /app

# Копирование package.json и package-lock.json (если есть)
COPY app/package*.json ./

# Установка зависимостей
RUN npm install

# Копирование остальных файлов проекта
COPY . .

# Команда по умолчанию (например, запуск тестов)
CMD ["make", "test"]