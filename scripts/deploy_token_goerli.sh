#!/usr/bin/env bash

if [ -f .env ]
then
  export $(cat .env | xargs) 
else
    echo "Please set your .env file"
    exit 1
fi

forge create ./src/MockERC20.sol:MockERC20 -i --rpc-url 'https://eth-goerli.g.alchemy.com/v2/5xH3uo4WsYGg7XQSRqktvZWVyrFM5_Fu' \
 --private-key '68f62e307c3a4855b1e3c91694f7e32e6c371474d27252010ebf2d6a4ae60773' \
 --etherscan-api-key ETHERSCAN_API_KEY --verify
