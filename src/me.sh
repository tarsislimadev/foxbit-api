#!/usr/bin/sh

## inputs

path="me"

. datetime.sh

## runners

resp=$( . post.sh "${path}" "" )

## outputs

. create.sh "${path}" "${datetime}" "resp" "${resp}"
