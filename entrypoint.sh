#!/bin/bash
set -e

ethspam | versus --stop-after=20 --concurrency=400000 'http://erigon-matic:8545/'
ethspam | versus --stop-after=50 --concurrency=1000000 'http://erigon-matic:8545/'
ethspam | versus --stop-after=100 --concurrency=2000000 'http://erigon-matic:8545/'
