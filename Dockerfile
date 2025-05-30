FROM n8nio/n8n:latest

# Set working directory
WORKDIR /home/node

# Copy any custom configurations
COPY --chown=node:node . /home/node/.n8n/

# Expose port
EXPOSE 5678

# Start n8n
CMD ["n8n", "start"]
