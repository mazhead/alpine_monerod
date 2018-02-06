# Alpine monero node docker

Uses alpine edge with testing repository. Use with caution.

Additionally these binaries are removed during image build to reduce size:
```
/usr/bin/monero-blockchain-import
/usr/bin/monero-blockchain-export
/usr/bin/monero-wallet-rpc
/usr/bin/monero-wallet-cli
```

Example run:
```
docker run -itd -p 18080:18080 -p 18081:18081 -v /path/to/host/directory:/root/.bitmonero --restart unless-stopped --name monero_node mazhead/alpine_monerod:latest
```
