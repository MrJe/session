#/bin/bash

PATH_SESSION="$(cd "$(dirname "$0")" && pwd -P)"

source ${PATH_SESSION}/_omzsh/omzsh.sh
source ${PATH_SESSION}/_reset/reset.sh
source ${PATH_SESSION}/_vim/sublivim.sh

quick_setup() {
	omzsh ${1}
	sublivim_install
}

if [ $# == 0 ]
then
	quick_setup
elif [ ${1} == "omzsh" ]
then
	omzsh ${2}
elif [ ${1} == "reset" ]
then
	reset_session
elif [ ${1} == "noreset" ]
then
	no_reset
elif [ ${1} == "sublivim" ]
then
	sublivim_install
elif [ ${1} == "nosublivim" ]
then
	sublivim_uninstall
else
	quick_setup ${1}
fi
