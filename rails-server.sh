#!/bin/bash
PORT=$1
PORT=3001
mongrel_rails stop
rm log/mongrel.pid

COMMAND="ruby script/server -p $PORT -d"
echo $COMMAND
$COMMAND
