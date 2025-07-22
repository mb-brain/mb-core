# Use the official n8n image
FROM n8nio/n8n:latest

# Set basic authentication (optional)
ENV N8N_BASIC_AUTH_ACTIVE=true
ENV N8N_BASIC_AUTH_USER=mb_admin
ENV N8N_BASIC_AUTH_PASSWORD=MB2025strong!

# Expose port
EXPOSE 5678

# Start n8n
CMD ["n8n", "start"]
