#!/usr/bin/env bash
set -eo pipefail

# Setup environment
source /opt/docker/libexec/common.sh
source /opt/docker/libexec/alluxio-vars.sh

render_templates /opt/docker/conf/alluxio $ALLUXIO_CONF_DIR
