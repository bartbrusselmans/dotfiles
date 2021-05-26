#!/bin/sh

echo "Cloning repositories..."

SITES=$HOME/Sites

# Personal
git clone git@github.com:bartbrusselmans/simple-node-graphql-server.git $SITES/simple-node-graphql-server
git clone git@github.com:bartbrusselmans/simple-node-rest-server.git $SITES/simple-node-rest-server
git clone git@github.com:bartbrusselmans/dotfiles.git $SITES/dotfiles