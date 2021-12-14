ARG OCIS_IMAGE_VERSION
FROM owncloud/ocis$OCIS_IMAGE_VERSION

MAINTAINER Enrico Bocchi <enrico.bocchi@cern.ch>

# Become root to modify the container with super powers
USER root

# Install supervisord to run multiple ocis extensions in the same container
RUN apk add supervisor

# Override entrypoint and cmd set by ownCloud
ENTRYPOINT "/bin/sh"
CMD "/bin/sh"

