# Alpine monero node docker

Uses alpine edge with testing repository. Use with caution.

Additionally these binaries are removed during image build to reduce size:

```
/usr/bin/monero-blockchain-export
/usr/bin/monero-wallet-rpc
/usr/bin/monero-wallet-cli
```


Example run with sync over network (will take long time if starting for the first time):
```
docker run -itd -p 18080:18080 -p 18081:18081 -v /path/to/host/directory:/root/.bitmonero --restart unless-stopped --name monero_node mazhead/alpine_monerod:latest
```


Example bootstrap from raw blockchain file:
```
docker run -it -v /path/to/host/directory:/root/.bitmonero --entrypoint /root/bootstrap.sh mazhead/alpine_monerod:latest
```
**Please note that this bootstrap uses a raw blockchain file and will not use the verify option. So if you do not trust the source use the sync over network above**
