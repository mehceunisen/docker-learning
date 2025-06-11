FROM golang:1.21-alpine as build

WORKDIR /app

COPY . .

RUN go build -o server

FROM alpine:latest

WORKDIR /app
COPY --from=build /app/server .
COPY wait-for-db.sh .
RUN chmod +x wait-for-db.sh

RUN apk add --no-cache curl
RUN apk add --no-cache postgresql-client

EXPOSE 8080

RUN addgroup -S app && adduser -S -G app app
USER app

CMD ["./wait-for-db.sh", "db", "./server"]