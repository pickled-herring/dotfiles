#!/usr/bin/env bash
rsync \
		--exclude ".git/"\
		--exclude "install.sh"\
		-avh . ~;
