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

CMD ["./wait-for-db.sh", "db", "./server"]