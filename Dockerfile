FROM scratch


WORKDIR .
ADD cloudflare-scanner .
ADD ip.txt config/
ADD config-example.yaml config/


CMD ["./cloudflare-scanner","-config=/config/config.yaml"]
