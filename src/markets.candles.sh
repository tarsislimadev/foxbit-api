#!/usr/bin/sh

## inputs

# . datetime.sh

market_symbol="${1}"

interval="${2}"

. datetime.sh "${3}"
start_time="${iso8601}"

. datetime.sh "0sec"
end_time="${iso8601}"

path="markets/${market_symbol}/candles"

## runners

resp=$( . get.sh "${path}" "interval=${interval}&start_time=${start_time}&end_time=${end_time}" )

## outputs

. create.sh "${path}" "${datetime}" "resp" "${resp}"
