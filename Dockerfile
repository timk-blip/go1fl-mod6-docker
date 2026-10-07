FROM golang:1.22-alpine

WORKDIR /usr/src/app

COPY . .

RUN go mod tidy

RUN go build -o tracker .

CMD ["./tracker"]