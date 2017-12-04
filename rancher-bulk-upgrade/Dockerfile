FROM cdrx/rancher-gitlab-deploy:latest@sha256:f5e913af3df805b9fd0f50ba66fe052fe5ea2bccd6a15e9aea95b78f3e94d430

LABEL maintainer "Leonardo Gatica <lgatica@protonmail.com>"

RUN apk add --no-cache jq

COPY upgrade.sh /upgrade.sh
RUN chmod +x /upgrade.sh

CMD ["/upgrade.sh"]
