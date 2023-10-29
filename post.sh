#!/usr/bin/sh

path="${1}"

queries="${2}"

curl -sL -X POST "https://api.foxbit.com.br/rest/v3/${path}?${queries}"
