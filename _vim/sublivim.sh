#!/bin/bash

sublivim_install() {
	curl https://raw.githubusercontent.com/reversTeam/Sublivim/master/installer.sh | sh
}

sublivim_uninstall() {
	UNINSTALL=~/.Sublivim/uninstall
	if [ ! -f ${UNINSTALL} ]; then
		echo "Sublivim is not installed!"
	else
		${UNINSTALL}
	fi
}
