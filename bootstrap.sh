#!/bin/sh

# This is intended to bootstrap a monero node faster.
# It will use official blockain.raw file and verify 0.
# Sync via network if you do not trust the file or do not want to turn off verify 


cd /root/.bitmonero || exit

echo "################"
echo "Downloading raw blockchain"
echo "################"

wget https://downloads.getmonero.org/blockchain.raw

echo "################"
echo "Starting import"
echo "################"

/usr/bin/monero-blockchain-import --verify 0 --input-file ./blockchain.raw

rm /root/.bitmonero/blockchain.raw

exit 0
