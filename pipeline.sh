#!/bin/sh

set -e

echo "-- Environment"
go env

echo "-- Format"
diffs="$(gofmt -d .)"
if [ -n "$diffs" ]; then
  printf "%s\n" "$diffs"
  exit 1
fi

echo "-- Build"
go build -a -v

echo "-- Tests"
go test
