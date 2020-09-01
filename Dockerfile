FROM scratch

WORKDIR .
ADD cloudflare-scanner .
ADD ip.txt .
ADD config-example.yaml .

EXPOSE 8082
CMD ["./cloudflare-scanner","-config=./config.yaml"]