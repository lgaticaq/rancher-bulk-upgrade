FROM cdrx/rancher-gitlab-deploy:latest@sha256:2c4fcd7bb9fbf740c99297a5e2787e8dc289e91bb65e56a1b12c0f33c38c3904

LABEL maintainer "Leonardo Gatica <lgatica@protonmail.com>"

RUN apk add --no-cache jq

COPY upgrade.sh /upgrade.sh
RUN chmod +x /upgrade.sh

CMD ["/upgrade.sh"]
