#!/usr/bin/sh

. .env

. datetime.sh

symbol="${1}"

path="${DATABASE}/icons"

filename="${symbol}.svg"

mkdir -p "${path}"

url="https://statics.foxbit.com.br/icons/colored/${filename}"

filepath="${path}/${filename}"

resp=$( curl -sL -X GET "${url}" --output "${filepath}" )

ls -la "${filepath}"
