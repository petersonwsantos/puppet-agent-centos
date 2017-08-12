FROM petersonwsantos/centos:7
MAINTAINER Peterson W. Santos (peterson.virti@gmail.com)

LABEL name="CentOS Base Image with puppet agent " \
    vendor="petersonwsantos" \
    license="GPLv2" \
    build-date="20170801"
    
ENV PUPPET_AGENT_VERSION="5.0.1"

RUN rpm -Uvh https://yum.puppetlabs.com/puppet5/puppet5-release-el-7.noarch.rpm && \
    yum upgrade -y && \
    yum update -y && \
    yum install -y puppet-agent-"$PUPPET_AGENT_VERSION" && \
    yum clean all

ENV PATH=/opt/puppetlabs/server/bin:/opt/puppetlabs/puppet/bin:/opt/puppetlabs/bin:$PATH


CMD ["/bin/bash"]
