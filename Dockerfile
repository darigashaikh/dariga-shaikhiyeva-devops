# Base image with Python
FROM python:3.12-alpine
# Working directory inside the container
WORKDIR /app
# Copy application code
COPY app/ /app/
# Build-time command
RUN python -m py_compile /app/app.py
# Documented port
EXPOSE 8080
# Default command
CMD ["python", "app.py"]
