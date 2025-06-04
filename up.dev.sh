#!/bin/bash

docker compose --env-file=.env -f compose.yaml -f compose.dev.yaml up -d
