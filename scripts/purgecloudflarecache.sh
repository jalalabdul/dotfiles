#!/bin/bash

curl -X DELETE "https://api.cloudflare.com/client/v4/zones/[ZONE ID]/purge_cache" \
-H "X-Auth-Email: jalalabdulaziz@gmail.com" \
-H "X-Auth-Key: [API KEY]" \
-H "Content-Type:application/json" \
--data '{"purge_everything":true}'

echo "CloudFlare cache has been cleared"
