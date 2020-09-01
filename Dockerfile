FROM golang:latest
WORKDIR /cloudflare-scanner 
RUN go build -o main . 
ENTRYPOINT ["./cloudflare-scanner"]
