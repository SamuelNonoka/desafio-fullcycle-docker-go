FROM golang:alpine AS build
RUN mkdir /app
ADD *.go /app
WORKDIR /app
RUN CGO_ENABLED=0 go build -o /app main.go

FROM scratch
WORKDIR /app
COPY --from=build /app /app
ENTRYPOINT [ "./main" ]