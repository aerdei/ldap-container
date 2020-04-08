FROM fedora:31
RUN dnf install -y openldap openldap-servers openldap-clients \
    && dnf clean all
COPY main helper ./
RUN cp /usr/share/openldap-servers/DB_CONFIG.example /var/lib/ldap/DB_CONFIG
EXPOSE 389/TCP
CMD ./main
