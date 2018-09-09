FROM cdrx/rancher-gitlab-deploy:latest@sha256:a5e335415cd89d1d062fc5ae1cbda19e33dc621136c5a4e76561ee86c6def913

LABEL maintainer "Leonardo Gatica <lgatica@protonmail.com>"

RUN apk add --no-cache jq

COPY upgrade.sh /upgrade.sh
RUN chmod +x /upgrade.sh

CMD ["/upgrade.sh"]
