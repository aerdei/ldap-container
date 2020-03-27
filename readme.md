## LDAP Container
An LDAP container for dev and test purposes.
## Build
```bash
# podman build . -t ldap-container:v0.0.1
```
## Run
```bash
# podman run -p 389:389 -e DEBUG=1 ldap-container:v0.0.1
```
