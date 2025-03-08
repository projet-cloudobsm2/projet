FROM mcr.microsoft.com/mssql/server:2017-latest
ENV ACCEPT_EULA=Y

COPY "Database/entrypoint.sh" /entrypoint.sh
COPY "Database/SqlCmdStartup.sh" /SqlCmdStartup.sh

RUN chmod +x /entrypoint.sh /SqlCmdStartup.sh


CMD ["/bin/bash", "/entrypoint.sh"]