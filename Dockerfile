FROM phusion/baseimage:master-amd64
LABEL maintainer="Rodrigo Severo <rsev@protonmail.com>"

RUN set -eux; \
	apt-get update; \
	apt-get install -y \
		pstoedit \
	; \
	rm -rf /var/lib/apt/lists/*; \
	mkdir -p /etc/bash/bashrc.d

COPY bash.bashrc /etc/bash.bashrc
COPY l.bashrc /etc/bash/bashrc.d
