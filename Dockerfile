# Используем официальный образ n8n
FROM n8nio/n8n:latest

# Включаем базовую аутентификацию
ENV N8N_BASIC_AUTH_ACTIVE=true
ENV N8N_BASIC_AUTH_USER=mb_admin
ENV N8N_BASIC_AUTH_PASSWORD=MB2025Strong!

# Открываем порт для n8n
EXPOSE 5678

# Запускаем n8n через shell
CMD ["tini", "--", "n8n"]
