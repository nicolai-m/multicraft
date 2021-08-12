#!/bin/sh

BR_PATH="`dirname \"$0\"`/bedrock"
export LD_LIBRARY_PATH="$BR_PATH"

echo "Synchronizing server files..."
rsync -ur "$BR_PATH/behavior_packs" "$BR_PATH/definitions" "$BR_PATH/resource_packs" "$BR_PATH/structures" "$PWD/"
echo "Synchronization completed."

exec "$BR_PATH/bedrock_server"

