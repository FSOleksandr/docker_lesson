FROM python:3.9-slim

# Встановлення робочої директорії
WORKDIR /app

# Копіювання файлів requirements.txt у контейнер
COPY requirements.txt .

# Встановлення залежностей
RUN pip install --no-cache-dir -r requirements.txt


# Копіювання решти коду вашого додатку
COPY . .

# Команда для запуску вашого додатку
CMD ["python", "web-app-code.py"]
