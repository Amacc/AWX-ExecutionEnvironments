from quay.io/ansible/awx-ee:0.1.1

RUN ansible-galaxy collection install ansible.windows && \
    pip install winrm