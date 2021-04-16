from quay.io/ansible/awx-ee:0.1.1

USER root

RUN yum update -y && yum -y install python38-devel krb5-devel krb5-libs krb5-workstation gcc

USER 1000

RUN ansible-galaxy collection install ansible.windows && \
    pip install winrm kerberos
