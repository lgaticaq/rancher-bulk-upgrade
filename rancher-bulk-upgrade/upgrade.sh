#!/usr/bin/env sh

_RANCHER_URL=${RANCHER_URL:-CATTLE_URL}
_RANCHER_ACCESS_KEY=${RANCHER_ACCESS_KEY:-CATTLE_ACCESS_KEY}
_RANCHER_SECRET_KEY=${RANCHER_SECRET_KEY:-CATTLE_SECRET_KEY}

environments=$(echo $SERVICES | jq -c ".environments[]")
for environment in $environments
do
  environment_name=$(echo $environment | jq -c -r ".name")
  stacks=$(echo $environment | jq -c ".stacks[]")
  for stack in $stacks
  do
    stack_name=$(echo $stack | jq -c -r ".name")
    services=$(echo $stack | jq -c ".services[]")
    for service in $services
    do
      service_name=$(echo $service | jq -c -r ".name")
      service_image=$(echo $service | jq -c -r ".image")
      upgrade --rancher-url $_RANCHER_URL --rancher-key $_RANCHER_ACCESS_KEY --rancher-secret $_RANCHER_SECRET_KEY --environment $environment_name --stack $stack_name --service $service_name --new-image $service_image
    done
  done
done
