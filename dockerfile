FROM debian:bullseye-slim
RUN apt-get update && \
    apt-get install -y --no-install-recommends \
    bash \
    netcat \
    fortune-mod \
    cowsay && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*
COPY wisecow.sh /usr/local/bin/wisecow.sh
RUN chmod +x /usr/local/bin/wisecow.sh
EXPOSE 4499
ENTRYPOINT ["/usr/local/bin/wisecow.sh"]
