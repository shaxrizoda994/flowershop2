# 1. Bazaviy image sifatida Python 3.11 foydalanamiz
FROM python:3.11-slim

# 2. Ishchi papkani yaratamiz va unga o'tamiz
WORKDIR /app

# 3. Requirements faylini konteynerga nusxalaymiz
COPY requirements.txt .

# 4. Zarur Python paketlarini o'rnatamiz
RUN pip install --no-cache-dir -r requirements.txt

# 5. Loyihaning barcha fayllarini konteynerga nusxalaymiz
COPY . .

# 6. Django serverini ishga tushirish uchun portni belgilaymiz
EXPOSE 8000

# 7. Django serverini ishga tushirish komandasi
CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]
