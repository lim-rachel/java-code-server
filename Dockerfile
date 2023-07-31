FROM openjdk:11

# Install code-server
RUN curl -fsSL https://code-server.dev/install.sh | sh

# Expose the code-server port
EXPOSE 8080

# Start code-server
CMD ["code-server", "--auth", "none", "--host", "0.0.0.0", "--port", "8080"]
