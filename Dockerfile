FROM centos:centos7.9.2009
RUN curl -LO "https://dl.k8s.io/release/$(curl -L -s https://dl.k8s.io/release/stable.txt)/bin/linux/amd64/kubectl" && \
install -o root -g root -m 0755 kubectl /usr/local/bin/kubectl
RUN yum install -y bash-completion && echo 'source <(kubectl completion bash)' >>~/.bashrc
