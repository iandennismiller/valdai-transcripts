#!/bin/bash

WGET_CMD="wget --no-if-modified-since --no-clobber --mirror --convert-links --adjust-extension --page-requisites --no-parent --wait=2 -o ./var/log -P var/extract"

URL_LIST=$(cat <<EOF
http://en.kremlin.ru/events/president/news/34018
http://en.kremlin.ru/events/president/transcripts/23789
http://en.kremlin.ru/events/president/transcripts/24537
http://en.kremlin.ru/events/president/transcripts/1383
http://en.kremlin.ru/events/president/transcripts/5475
http://en.kremlin.ru/events/president/news/16717
http://en.kremlin.ru/events/president/news/19243
http://en.kremlin.ru/events/president/news/46860
http://en.kremlin.ru/events/president/news/50548
http://en.kremlin.ru/events/president/news/53151
http://en.kremlin.ru/events/president/news/55882
http://en.kremlin.ru/events/president/news/58848
http://en.kremlin.ru/events/president/news/61719
EOF
)

for URL in $URL_LIST
do
    echo "$WGET_CMD $URL"
    $WGET_CMD "$URL"
done
