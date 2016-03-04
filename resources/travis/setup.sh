#!/usr/bin/env sh

MONGODB_VERSION='3.2.3'

set -ev

wget http://fastdl.mongodb.org/linux/mongodb-linux-x86_64-${MONGODB_VERSION}.tgz -O /tmp/mongodb.tgz
tar -xvf /tmp/mongodb.tgz
mkdir /tmp/data
${PWD}/mongodb-linux-x86_64-${MONGODB_VERSION}/bin/mongod --dbpath /tmp/data --bind_ip 127.0.0.1 --noauth &> /dev/null &

# Try to keep environment pollution down, EPA loves us.
unset MONGODB_VERSION