#!/bin/bash
set -e

ethspam | versus --stop-after=400000 --concurrency=20 'http://erigon-matic:8545/'
ethspam | versus --stop-after=1000000 --concurrency=50 'http://erigon-matic:8545/'
ethspam | versus --stop-after=2000000 --concurrency=100 'http://erigon-matic:8545/'
