FROM registry.access.redhat.com/ubi8/ubi


RUN dnf -y update \
&& dnf -y install openssl python3 wget git \
&& dnf -y update \
&& dnf clean all \
&& rm -rf /var/cache/yum \
&& cd / \
&& wget https://dl.gogs.io/0.12.3/gogs_0.12.3_linux_amd64.tar.gz\
&& tar -xzvf gogs_0.12.3_linux_amd64.tar.gz \
&& rm -f ./gogs_0.12.3_linux_amd64.tar.gz \

EXPOSE 3000

CMD [ "/bin/bash", "-c", "/gogs/gogs web" ]

