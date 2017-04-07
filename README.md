# Docker Kerberos Keytab Generator

This docker image allows you to automate the creation of a keytab file using only your username and password

## Environment variables

- `PRINCIPAL`: Your username, should be of the form `user@EXAMPLE.COM`
- `KEYTAB_SECURITY`: Optional security level for your keytab (default is `rc4-hmac`)

## Running

*Please replace the `< >` blocks by the appropriate values*

Linux / Mac
```
docker run -it --rm \
            -v $(pwd):/output \
            -e PRINCIPAL=<user@EXAMPLE.COM> \
            simplesteph/docker-kerberos-get-keytab
```

Windows
```
docker run -it --rm ^
            -v %cd%:/output ^
            -e PRINCIPAL=<user@EXAMPLE.COM> ^
            simplesteph/docker-kerberos-get-keytab
```

## Providing your own krb5.conf

If you wish, you can provide your own krb5.conf to find the login servers
Locations could be
- /etc/krb5.conf (Linux / Mac)
- C:\windows\krb5.ini (older Windows)
- C:\winnt\krb5.ini (older Windows)

Then in your `docker run` command, add the following: `-v /location/of/krb5.conf:/etc/krb5:ro`
