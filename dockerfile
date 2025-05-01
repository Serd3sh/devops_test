FROM ubuntu:latest

COPY reverse.deb /app/

RUN apt-get update && \
    apt-get install -y dpkg && \
    dpkg -i /app/reverse.deb || apt-get -f install -y && \
    rm -rf /var/lib/apt/lists/*

CMD ./reverse one two three four five