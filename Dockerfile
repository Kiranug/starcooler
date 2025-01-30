# Dockerfile
FROM mcr.microsoft.com/windows/servercore/iis

# Copy application files
COPY ./app /inetpub/wwwroot # Ensure "./app" exists in the build context

# Expose port 80
EXPOSE 80
