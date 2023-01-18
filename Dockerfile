FROM ubuntu:22.04

ENTRYPOINT [ "/init" ]

# RADIUS Authentication Messages
EXPOSE 1812/udp

# RADIUS Accounting Messages
EXPOSE 1813/udp

RUN apt-get update

# Install freeradius with ldap support
RUN apt-get install -y freeradius freeradius-common freeradius-krb5 freeradius-ldap freeradius-utils

# Copy our configuration
COPY config/clients.conf /etc/freeradius/3.0/
COPY config/ldap /etc/freeradius/3.0/mods-available/
COPY config/default /etc/freeradius/3.0/sites-available/
COPY config/inner-tunnel /etc/freeradius/3.0/sites-available/

RUN ln -s /etc/freeradius/3.0/mods-available/ldap /etc/freeradius/3.0/mods-enabled/ldap
# Create Certificate
RUN cd /etc/freeradius/3.0/certs && make

COPY init /

# CMD ["/bin/bash"]
# CMD ["/usr/sbin/freeradius", "-x", "-f", "-l stdout"]
