# Docker Kerberos Keytab Generator

This docker image allows you to automate the creation of a keytab file using only your username and password

## Environment variables

- `PRINCIPAL`: Your username, should be of the form `user@EXAMPLE.COM`
- `KEYTAB_SECURITY`: Security level for your keytab (default is `rc4-hmac`)

## Pre-requisites

Make sure you have somewhere in your computer the file `krb5.conf`, as you need to mount it to your docker image.
Locations could be
- /etc/krb5.conf (Linux / Mac)
- C:\windows\krb5.ini (older Windows)
- C:\winnt\krb5.ini (older Windows)

## Running

*Please replace the `< >` blocks by the appropriate values*

Linux / Mac
```
docker run -it --rm \
            -v $(pwd):/output \
            -v </location/of/krb5.conf>:/etc/krb5.conf:ro \
            -e PRINCIPAL=<user@EXAMPLE.COM> \
            simplesteph/docker-kerberos-get-keytab
```

Windows
```
docker run -it --rm ^
            -v %cd%:/output ^
            -v <C:\location\of\krb5.ini>:/etc/krb5.conf:ro ^
            -e PRINCIPAL=<user@EXAMPLE.COM> ^
            simplesteph/docker-kerberos-get-keytab
```
