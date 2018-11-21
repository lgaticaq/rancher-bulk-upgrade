FROM cdrx/rancher-gitlab-deploy:latest@sha256:15e76a4e88436e74dc2682eb5bc723dc36eee6118032a42edb91e71b76405a19

LABEL maintainer "Leonardo Gatica <lgatica@protonmail.com>"

RUN apk add --no-cache jq

COPY upgrade.sh /upgrade.sh
RUN chmod +x /upgrade.sh

CMD ["/upgrade.sh"]
