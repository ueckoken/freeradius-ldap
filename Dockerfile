FROM ubuntu:22.04

ENTRYPOINT [ "/init" ]

# RADIUS Authentication Messages
EXPOSE 1812/udp

# RADIUS Accounting Messages
EXPOSE 1813/udp

RUN apt-get update

# Install freeradius with ldap support
RUN apt-get install -y freeradius curl

# Install tini init
ENV TINI_VERSION v0.19.0
RUN curl -L https://github.com/krallin/tini/releases/download/${TINI_VERSION}/tini > /usr/bin/tini \
        && chmod +x /usr/bin/tini

# Copy our configuration
COPY ldap /etc/freeradius/3.0/mods-available/
COPY init /

# CMD ["/bin/bash"]
