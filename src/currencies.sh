#!/usr/bin/sh

## inputs

. datetime.sh

path="currencies"

## runners

resp=$( . get.sh "${path}" "" )

## outputs

. create.sh "${path}" "${datetime}" "resp" "${resp}"
