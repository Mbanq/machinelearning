FROM mbanq/machine-learning

MAINTAINER Mbanq <dev@mbanq.com>

RUN set -eux; \
    yum -y -q install curl tar gzip; \
    curl -fSL "https://github.com/aws-cloudformation/cloudformation-guard/releases/download/1.0.0/cfn-guard-linux-1.0.0.tar.gz" -o cfn-guard-linux-1.0.0.tar.gz; \
    tar -xvf cfn-guard-linux-1.0.0.tar.gz; \
    mv ./cfn-guard-linux/cfn-guard /usr/bin; \
    rm -rf cfn-guard-linux-1.0.0.tar.gz cfn-guard-linux/