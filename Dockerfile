FROM alpine/bombardier:latest

COPY . /app
WORKDIR /app

ENTRYPOINT ["sh"]
CMD ["stop.sh"]
