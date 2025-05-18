#!/bin/bash
docker run -d --name cowrie   -p 2222:2222   -v $(pwd)/cowrie.conf:/cowrie/cowrie.cfg   cowrie/cowrie
