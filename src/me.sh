#!/usr/bin/sh

## inputs

path="me"

. datetime.sh

## runners

resp=$( bash post.sh "${path}" "" )

## outputs

bash create.sh "${path}" "${datetime}" "resp" "${resp}"
