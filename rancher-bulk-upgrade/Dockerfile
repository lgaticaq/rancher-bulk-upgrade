FROM cdrx/rancher-gitlab-deploy:latest@sha256:c40fffe3cffd70a36972a88d4f4b23e44d9a9f3e1eda1c1c5d9384c3bff80583

LABEL maintainer "Leonardo Gatica <lgatica@protonmail.com>"

RUN apk add --no-cache jq

COPY upgrade.sh /upgrade.sh
RUN chmod +x /upgrade.sh

CMD ["/upgrade.sh"]
