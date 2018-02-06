FROM alpine:edge

RUN echo "http://dl-cdn.alpinelinux.org/alpine/edge/testing" >> /etc/apk/repositories && \
    apk --no-cache add monero && \
    rm /usr/bin/monero-blockchain-import /usr/bin/monero-blockchain-export /usr/bin/monero-wallet-rpc /usr/bin/monero-wallet-cli

EXPOSE 18080 18081

ENTRYPOINT ["/usr/bin/monerod", "--rpc-bind-ip=0.0.0.0", "--restricted-rpc", "--confirm-external-bind"]
