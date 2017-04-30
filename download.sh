#!/bin/bash
curl 'https://scans.io/zsearch/7pkoj2wpavfqvl7w-20170416.json.lz4' -H 'Pragma: no-cache' -H 'Accept-Encoding: gzip, deflate, sdch, br' -H 'Accept-Language: de-DE,de;q=0.8,en-US;q=0.6,en;q=0.4,nb;q=0.2' -H 'Upgrade-Insecure-Requests: 1' -H 'User-Agent: Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/57.0.2987.54 Safari/537.36' -H 'Accept: text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,*/*;q=0.8' -H 'Referer: https://censys.io/data/ipv4' -H 'Connection: keep-alive' -H 'Cache-Control: no-cache' --compressed | lz4 -d | jq -r '. | select(.p80 != null) | .ip' | lz4 > test.lz