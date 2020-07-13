#!/bin/bash

set -eux


echo "=> Ensure permissions"
chown -R cloudron:cloudron /run /app/data

echo "=> Start the statping"
exec /usr/local/bin/gosu cloudron:cloudron /app/code/npm start
