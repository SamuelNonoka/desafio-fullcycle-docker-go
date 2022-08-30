FROM golang:1.16-alpine

RUN mkdir /app
ADD . /app
WORKDIR /app

CMD [ "go", "run", "./main.go"]