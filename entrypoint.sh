#!/bin/bash
set -e

 ethspam | versus --stop-after=100 --concurrency=5 'http://erigon-mainnet:8545/'

