#/bin/bash

source ./_omzsh/omzsh.sh
source ./_reset/reset.sh
source ./_vim/sublivim.sh

if [ $# == 0 ]
then
	omzsh
	sublivim_install
elif [ ${1} == "reset" ]
then
	reset_session
else
	omzsh ${1}
	sublivim_install
fi
