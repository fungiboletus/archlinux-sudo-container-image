FROM archlinux:latest

RUN pacman -Syu --noconfirm sudo \
  && groupadd -g 1000 antoine_group \
  && useradd -m -u 1000 -g antoine_group -s /bin/bash antoine \
  && echo "antoine ALL=(ALL) NOPASSWD: ALL" >> /etc/sudoers
