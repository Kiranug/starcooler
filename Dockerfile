# escape=`
FROM mcr.microsoft.com/windows/servercore:ltsc2019

SHELL ["powershell", "-Command"]

RUN Install-WindowsFeature -Name Web-Server; `
    Invoke-WebRequest -UseBasicParsing -Uri "https://dotnetbinaries.blob.core.windows.net/servicemonitor/2.0.1.10/ServiceMonitor.exe" -OutFile "C:\\ServiceMonitor.exe"

# Copy application files
COPY ./app /inetpub/wwwroot # Ensure "./app" 

EXPOSE 80

ENTRYPOINT ["C:\\ServiceMonitor.exe", "w3svc"]
