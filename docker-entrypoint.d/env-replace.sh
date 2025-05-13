#!/bin/sh

echo "Injecting runtime environment variables into env.js..."

ENV_FILE="/usr/share/nginx/html/env.js"

for VAR in $(env | grep ^REACT_APP_); do
  NAME=$(echo "$VAR" | cut -d= -f1)
  VALUE=$(echo "$VAR" | cut -d= -f2-)
  echo " - Injecting: $NAME=$VALUE"
  sed -i "s|%$NAME%|$VALUE|g" "$ENV_FILE"
done

exec "$@"
