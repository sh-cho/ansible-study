FROM ubuntu:16.04

RUN apt-get update && \
apt-get install -y netcat iputils-ping openssh-client openssh-server && \
mkdir /var/run/sshd && \
chmod 0755 /var/run/sshd && \
useradd -p $(openssl passwd -1 1234) --create-home --shell /bin/bash --groups sudo vince

EXPOSE 22

ENTRYPOINT service ssh restart && tail -f /dev/null
