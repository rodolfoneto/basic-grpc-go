FROM golang:latest

WORKDIR /usr/src/app

EXPOSE 50051

RUN apt-get update -y && apt install -y protobuf-compiler && \
apt-get install sqlite3 -y && \
go install google.golang.org/protobuf/cmd/protoc-gen-go@v1.28 && \
go install google.golang.org/grpc/cmd/protoc-gen-go-grpc@v1.2 && \
export PATH="$PATH:$(go env GOPATH)/bin"
