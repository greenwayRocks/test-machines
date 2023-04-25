FROM ubuntu:focal
WORKDIR /usr/local/bin
RUN apt update && apt install -y software-properties-common && apt-add-repository -y ppa:ansible/ansible && apt update && apt install -y curl git ansible build-essential vim stow
COPY . .
RUN ansible-playbook playbook.yml --tags "zsh"
CMD ["zsh"]
