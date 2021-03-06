FROM fedora:20

RUN yum update -y -q; yum clean all
RUN yum install -y -q logrotate; yum clean all

ADD docker_logrotate.conf /etc/logrotate.d/docker
ADD logrotate /srv/whalelogrotate/logrotate

RUN chmod 0644 /etc/logrotate.d/docker

CMD /srv/whalelogrotate/logrotate
