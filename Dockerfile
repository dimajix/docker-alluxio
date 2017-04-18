FROM dimajix/java:oracle-8
MAINTAINER k.kupferschmidt@dimajix.de

ARG BUILD_ALLUXIO_VERSION=1.4.0

USER root

# Common Environment variables
ENV ALLUXIO_HOME=/opt/alluxio \
    ALLUXIO_CONF_DIR=/etc/alluxio \
    ALLUXIO_LOGS_DIR=/var/log/alluxio

# Download and install Spark
RUN curl -sL --retry 3 "http://downloads.alluxio.org/downloads/files/${BUILD_ALLUXIO_VERSION}/alluxio-${BUILD_ALLUXIO_VERSION}-bin.tar.gz" \
  | tar xz -C /opt \
 && ln -s /opt/alluxio-${BUILD_ALLUXIO_VERSION} ${ALLUXIO_HOME} \
 && chown -R root:root ${ALLUXIO_HOME} \
 && mkdir -p ${ALLUXIO_CONF_DIR} \
 && mkdir -p ${ALLUXIO_LOGS_DIR}

# copy configs and binaries
COPY bin/ /opt/docker/bin/
COPY libexec/ /opt/docker/libexec/
COPY conf/ /opt/docker/conf/alluxio/

ENV PATH=$PATH:${ALLUXIO_HOME}/bin

ENTRYPOINT ["/opt/docker/bin/entrypoint.sh"]
CMD ["bash"]
