#!/bin/bash

if [ -f /voordeur/ring ]; then

    for CHAT_ID in ${CHAT_IDS}; do 
        /usr/bin/curl -X POST https://api.telegram.org/${BOT_ID}:${TOKEN}/sendVideo?chat_id=${CHAT_ID} -F chat_id=${CHAT_ID} -F video=@$1 2>&1;
    done

rm /voordeur/ring
done

true