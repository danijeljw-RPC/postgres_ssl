#!/usr/bin/sh
chmod +x ./certstrap
./certstrap init --common-name myCA
./certstrap request-cert --common-name postgresdb --domain cdn-syd1-01.rpc-cdn.com
./certstrap sign postgresdb --CA myCA