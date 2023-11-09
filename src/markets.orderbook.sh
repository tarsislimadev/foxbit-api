#!/usr/bin/sh

## inputs

. datetime.sh

market_symbol="${1}"

path="markets/${market_symbol}/orderbook"

## runners

resp=$( . get.sh "${path}" "" )

## outputs

. create.sh "${path}" "${datetime}" "resp" "${resp}"
