FROM centos:centos7
MAINTAINER Stephane Maarek

# Kerberos
RUN yum -y update \
    && yum install -y krb5-server krb5-libs krb5-auth-dialog krb5-workstation

# Dummy krb5.conf
COPY krb5.conf /etc/krb5.conf

COPY scripts/ /opt/scripts/
VOLUME /output

CMD ["/opt/scripts/generate-keytab.sh"]
