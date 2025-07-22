# Use official n8n image
FROM n8nio/n8n:latest

# Set basic authentication
ENV N8N_BASIC_AUTH_ACTIVE=true
ENV N8N_BASIC_AUTH_USER=mb_admin
ENV N8N_BASIC_AUTH_PASSWORD=MB2025strong!

# Expose port
EXPOSE 5678

# Start n8n
ENTRYPOINT ["tini", "--", "n8n"]
CMD ["start"]
