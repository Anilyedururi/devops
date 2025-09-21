FROM ubuntu:22.04
WORKDIR /app
RUN apt-get update && \
    apt-get install -y git fortune-mod cowsay netcat && \
    apt-get clean
RUN git clone https://github.com/nyrahul/wisecow.git
WORKDIR /app/wisecow
RUN chmod +x wisecow.sh
ENV PATH="/usr/games:${PATH}"
EXPOSE 4499
CMD ["./wisecow.sh"]
