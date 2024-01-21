# syntax=docker/dockerfile:1

FROM golang:1.17-alpine as builder

# Definir WORKDIR
WORKDIR /usr/src

# Copiar arquivos go.mod e arquivos de código
COPY go.mod *.go ./

# Buildar aplicação e remover informações de debug
RUN go build -ldflags '-s -w' -o hello

CMD ["./hello"]