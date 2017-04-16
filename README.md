# Docker-Alluxio

This is a repository for building a Docker image for Apache Alluxio. Alluxio is an in-memory fabric for caching files
in a Hadoop related environment. Moreover it also serves as an abstraction layer for different underlying persistent
storages like HDFS, NFS, S3, ...

This Docker container can be used to start up multiple Alluxio containers for caching purposes.


## Configuration

ALLUXIO_MASTER_HOSTNAME=
ALLUXIO_MASTER_PORT=19998
ALLUXIO_MASTER_WEB_PORT=19999
ALLUXIO_MASTER_JOURNAL_FOLDER

ALLUXIO_WORKER_HOSTNAME=$(hostname -f)
ALLUXIO_WORKER_PORT=29998
ALLUXIO_WORKER_WEB_PORT=30000
ALLUXIO_WORKER_DATA_PORT=29999
ALLUXIO_WORKER_FOLDER

## Volumes
ALLUXIO_MASTER_JOURNAL_FOLDER
ALLUXIO_WORKER_FOLDER
ALLUXIO_UNDERFS_ADDRESS

## Communication Ports

Master Web Interface: <master>:19999


# Deploying Alluxio

## Minimum Deployment

## Using S3 as Underfs

ALLUXIO_UNDERFS_ADDRESS
S3_ENDPOINT
S3_PROXY_HOST
S3_PROXY_PORT
AWS_ACCESS_KEY_ID=
AWS_SECRET_ACCESS_KEY=
