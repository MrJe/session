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
	"install")
		quick_setup ${2}
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
	"reset")
		reset_session
		;;
	"sublivim")
		sublivim_install
		;;
	"uninstall")
		sublivim_uninstall
		omzsh_uninstall
		;;
	"rmomzsh")
		omzsh_uninstall
		;;
	"rmreset")
		no_reset
		;;
	"rmsublivim")
		sublivim_uninstall
		;;
	*)
		echo "Error: Unknow argument [${1}]. (See README)"
		;;
esac
