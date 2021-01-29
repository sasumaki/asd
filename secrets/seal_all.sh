#!/bin/bash
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"
for filename in $DIR/unsealed/*.yaml; do
    [ -e "$filename" ] || continue
    kubeseal --format=yaml --cert=$DIR/pub-sealed-secrets.pem < ${filename} > ${filename//unsealed/sealed}
done