FROM scratch


WORKDIR .
ADD cloudflare-scanner .
ADD ip.txt .
ADD config-example.yaml .


CMD ["./cloudflare-scanner","-config=./config.yaml"]
