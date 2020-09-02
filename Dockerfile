FROM scratch


WORKDIR .
ADD cloudflare-scanner .
ADD ip.txt .
ADD config-example.yaml .
ADD start.sh .

ENV INTERVAL="86400"
ENTRYPOINT ["/start.sh"]
