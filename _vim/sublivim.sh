#!/bin/bash

sublivim_install() {
	curl https://raw.githubusercontent.com/reversTeam/Sublivim/master/installer.sh | sh
}

sublivim_uninstall() {
	cd ~
	./.Sublivim/uninstall
	cd -
}
