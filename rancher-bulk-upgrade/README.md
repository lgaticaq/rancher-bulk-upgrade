# rancher-bulk-upgrade

[![dockeri.co](http://dockeri.co/image/lgatica/rancher-bulk-upgrade)](https://hub.docker.com/r/lgatica/rancher-bulk-upgrade/)

> Docker Image for bulk upgrade rancher services from a json

NOTE: Only heroku support

Supported tags and respective Dockerfile links

- 1.0.1, latest ([Dockerfile](https://github.com/lgaticaq/rancher-bulk-upgrade/blob/master/rancher-bulk-upgrade/Dockerfile))

```bash
docker run --rm -e RANCHER_URL=$RANCHER_URL -e RANCHER_ACCESS_KEY=$RANCHER_ACCESS_KEY -e RANCHER_SECRET_KEY=$RANCHER_SECRET_KEY -e SERVICES='{"environments":[{"name":"Default","stacks":[{"name":"myStack","services":[{"name":"myService","image":"my-registry/my-service:latest"}]}]}]}' lgatica/rancher-bulk-upgrade:latest
```
