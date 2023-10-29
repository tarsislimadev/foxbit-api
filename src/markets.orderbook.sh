#!/usr/bin/sh

## inputs

. datetime.sh

market_symbol="${1}"

path="markets/${market_symbol}/orderbook"

## runners

resp=$( bash get.sh "${path}" "" )

## outputs

bash create.sh "${path}" "${datetime}" "resp" "${resp}"
