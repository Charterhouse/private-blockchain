#!/usr/bin/env bash
set -e

msg() {
  echo
  echo $1
  echo
}

geth --datadir /node/data init /node/genesis.json

BOOTNODES=""

if [[ -z $1 ]]; then
  msg "bootnodes not provided. Was it intended?"
else
  msg "Using bootnodes: $1"
  BOOTNODES="--bootnodes $1"
fi

geth --datadir /node/data \
     --networkid 5 \
     --gasprice "20000000000" \
     --targetgaslimit "4712388" \
     --port 30303 $BOOTNODES \
     2>>/node/blockchain.log
