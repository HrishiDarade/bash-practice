#!/bin/bash

echo "Loop over array"

servers=("app1" "app2" "app3")

for server in "${servers[@]}"
do
    echo "Connecting to $server"
done

