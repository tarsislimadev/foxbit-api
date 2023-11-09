#!/usr/bin/sh

## inputs

. datetime.sh

path="markets/quotes"

side="${1}"

amount="${2}"

base_currency="${3}"

quote_currency="${4}"

## runners

resp=$( . get.sh "${path}" "side=${side}&base_currency=${base_currency}&quote_currency=${quote_currency}&amount=${amount}" )

## outputs

. create.sh "${path}" "${datetime}" "resp" "${resp}"
