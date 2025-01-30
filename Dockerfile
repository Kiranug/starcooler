# Use a Windows Server Core base image
FROM mcr.microsoft.com/dotnet/framework/aspnet:4.8-windowsservercore-ltsc2019

# Copy application files
COPY ./app /inetpub/wwwroot

# Expose port 80
EXPOSE 80
