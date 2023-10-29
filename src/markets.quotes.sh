#!/usr/bin/sh

## inputs

path="markets/quotes"

side="${1}"

amount="${2}"

base_currency="${3}"

quote_currency="${4}"

. datetime.sh

## runners

resp=$( bash get.sh "${path}" "side=${side}&base_currency=${base_currency}&quote_currency=${quote_currency}&amount=${amount}" )

## outputs

bash create.sh "${path}" "${datetime}" "resp" "${resp}"
