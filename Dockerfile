FROM vmware/powerclicore:latest

RUN mkdir -p /home/app
USER root
RUN echo "Pulling watchdog binary from Github." \
    && curl -sSL https://github.com/openfaas/faas/releases/download/0.9.14/fwatchdog > /usr/bin/fwatchdog \
    && chmod +x /usr/bin/fwatchdog \
    && cp /usr/bin/fwatchdog /root

COPY PowerCLIVeba.ps1 PowerCLIVeba.ps1
COPY helpers helpers
COPY function function

RUN pwsh -file ./helpers/Set-PowerCLIConfiguration.ps1

WORKDIR /root

USER root

# Populate example here - i.e. "cat", "sha512sum" or "node index.js"
SHELL [ "pwsh", "-command" ]

ENV fprocess="xargs pwsh ./PowerCLIVeba.ps1"

EXPOSE 8080

HEALTHCHECK --interval=3s CMD [ -e /tmp/.lock ] || exit 1
CMD [ "fwatchdog" ]
