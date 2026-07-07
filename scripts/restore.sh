#!/bin/bash

FILE=$1

docker exec -i hotel-postgres psql \
-U postgres \
-d hoteldb \
< "$FILE"

echo "Restore completed successfully."