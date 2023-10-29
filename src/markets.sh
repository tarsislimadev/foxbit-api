#!/usr/bin/sh

## inputs

path="markets"

. datetime.sh

## runners

resp=$( bash get.sh "${path}" "" )

## outputs

bash create.sh "${path}" "${datetime}" "resp" "${resp}"
