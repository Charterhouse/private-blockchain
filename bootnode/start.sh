#!/usr/bin/env bash
set -e

geth --datadir /node/data init /node/genesis.json
geth --datadir /node/data \
     --networkid 5 \
     --port 30301 \
     2>>/node/blockchain.log
