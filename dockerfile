FROM golang:1.20

WORKDIR /app

COPY main.go .
COPY go.mod .

RUN go get
RUN go build -o bin .
ENTRYPOINT [ "/app/bin" ]