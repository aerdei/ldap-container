FROM fedora:31
RUN dnf install -y openldap openldap-servers openldap-clients \
    && dnf clean all
COPY mod.ldif basedn.ldif adduser.ldif main helper ./
RUN cp /usr/share/openldap-servers/DB_CONFIG.example /var/lib/ldap/DB_CONFIG \
    && chown ldap:ldap /var/lib/ldap/DB_CONFIG \
    && chown -R ldap:ldap /etc/openldap \
    && chown -R ldap:ldap /var/lib/ldap
EXPOSE 389/TCP
CMD ./main
