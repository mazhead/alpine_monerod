# Alpine monero node docker

Uses alpine edge with testing repository. Use with caution.

Example run:
```
docker run -itd -p 18080:18080 -p 18081:18081 -v /path/to/host/directory:/root/.bitmonero --restart unless-stopped --name monero_node mazhead/alpine_monerod:latest
```
