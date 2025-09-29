#!/bin/bash
# Simple Interest Calculator

if [ $# -ne 3 ]; then
  echo "Usage: bash $0 PRINCIPAL RATE TIME"
  exit 1
fi

PRINCIPAL=$1
RATE=$2
TIME=$3

INTEREST=$(echo "scale=2; $PRINCIPAL * $RATE * $TIME / 100" | bc)
echo "Simple Interest is: $INTEREST"
