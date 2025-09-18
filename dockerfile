FROM ubuntu:22.04

# ⿡ Set working directory
WORKDIR /app

# ⿢ Install prerequisites during build
RUN apt-get update && \
    apt-get install -y git fortune-mod cowsay netcat && \
    apt-get clean

# ⿣ Clone the repo
RUN git clone https://github.com/nyrahul/wisecow.git

# ⿤ Switch to repo directory
WORKDIR /app/wisecow

# ⿥ Make script executable
RUN chmod +x wisecow.sh

# ⿦ 👇 Add /usr/games to PATH so fortune & cowsay are found
ENV PATH="/usr/games:${PATH}"

# ⿧ Expose port
EXPOSE 4499

# ⿨ Run the original script
CMD ["./wisecow.sh"]