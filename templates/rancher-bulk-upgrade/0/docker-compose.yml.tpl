---
version: '2'

services:
  rancher-bulk-upgrade:
    image: lgatica/rancher-bulk-upgrade:latest
    environment:
      SERVICES: '${SERVICES}'
    stdin_open: true
    tty: true
    labels:
      {{- if ne .Values.HOST_LABEL ""}}
      io.rancher.scheduler.affinity:host_label: ${HOST_LABEL}
      {{- end}}
      io.rancher.container.pull_image: always
      io.rancher.container.hostname_override: container_name
      io.rancher.container.start_once: 'true'
      io.rancher.container.create_agent: true
      io.rancher.container.agent.role: environment
