#/bin/bash

PATH_SESSION="$(cd "$(dirname "$0")" && pwd -P)"

source ${PATH_SESSION}/_omzsh/omzsh.sh
source ${PATH_SESSION}/_reset/reset.sh
source ${PATH_SESSION}/_vim/sublivim.sh

quick_setup() {
	sublivim_install
	omzsh ${1}
}

case "${1}" in
	"")
		quick_setup
		;;
	"omzsh")
		omzsh ${2}
		;;
	"omzsh_theme")
		set_theme ${2}
		;;
	"omzsh_mail")
		set_usermail
		;;
	"noomzsh")
		omzsh_uninstall
		;;
	"reset")
		reset_session
		;;
	"noreset")
		no_reset
		;;
	"sublivim")
		sublivim_install
		;;
	"nosublivim")
		sublivim_uninstall
		;;
	"noall")
		sublivim_uninstall
		omzsh_uninstall
		;;
	*)
		quick_setup ${1}
		;;
esac
