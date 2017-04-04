# Docker Kerberos Keytab Generator

This docker image allows you to automate the creation of a keytab file using only your username and password

## Environment variables

- `PRINCIPAL`: Your username, should be of the form `user@EXAMPLE.COM`
- `PASSWORD`: Your password
- `KEYTAB_SECURITY`: Security level for your keytab (default is rc4-hmac)

## Pre-requisites

Make sure you have somewhere in your computer the file `krb5.conf`, as you need to mount it to your docker image

## Running

```
docker run -it --rm \
            -v $(pwd):/output \
            -v /location/of/krb5.conf:/etc/krb5.conf:ro
            -e PRINCIPAL=user@EXAMPLE.COM
            -e PASSWORD="P@ssw0rd"
            simplesteph/docker-kerberos-get-keytab
```
