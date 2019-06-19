  
FROM golang:1.10

RUN mkdir -p /go/src/github.com/shajalahamedcse/kafka-service 
ADD . /go/src/github.com/shajalahamedcse/kafka-service/
WORKDIR /go/src/github.com/shajalahamedcse/kafka-service
RUN go get -u github.com/golang/dep/cmd/dep
RUN dep ensure -v
RUN go build -o api -i cmd/api/main.go
CMD ["/go/src/github.com/shajalahamedcse/kafka-service/api"]