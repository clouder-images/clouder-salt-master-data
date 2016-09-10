FROM clouder/clouder-base
MAINTAINER Yannick Buron yburon@goclouder.net

RUN mkdir -p /srv/salt/_modules
ADD sources/salt-master/* /srv/salt/
ADD sources/_modules/clouder.py /srv/salt/_modules/
RUN mkdir -p /srv/pillar/containers
RUN mkdir -p /srv/pillar/bases
RUN echo "base:" > /srv/pillar/top.sls
