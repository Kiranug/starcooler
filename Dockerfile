# escape=`
FROM mcr.microsoft.com/windows/servercore:ltsc2019

# Copy application files
COPY ./app /inetpub/wwwroot # Ensure "./app" 

EXPOSE 80

ENTRYPOINT ["C:\\ServiceMonitor.exe", "w3svc"]
