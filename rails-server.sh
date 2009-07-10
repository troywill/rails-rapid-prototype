#!/bin/bash
PORT=$1
mongrel_rails stop
rm log/mongrel.pid

echo "mongrel_rails start -p $PORT -d"
mongrel_rails start -p $PORT -d
