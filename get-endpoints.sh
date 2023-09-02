#!/usr/bin/env bash


export DEV_ENDPOINT=$(aws cloudformation describe-stacks --stack-name sam00-dev | jq -r '.Stacks[].Outputs[].OutputValue | select(startswith("https://"))')
export PROD_ENDPOINT=$(aws cloudformation describe-stacks --stack-name sam00-prod | jq -r '.Stacks[].Outputs[].OutputValue | select(startswith("https://"))')

echo "Dev endpoint: $DEV_ENDPOINT"
echo "Prod endpoint: $PROD_ENDPOINT"
