#!/bin/env sh

# CoW Wrapper

timestamp="$(date +%F-%R)"

cow > /tmp/cow-${timestamp}.log 2>&1
