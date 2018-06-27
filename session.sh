#/bin/bash

source ./_omzsh/omzsh.sh
source ./_reset/reset.sh
source ./_vim/sublivim.sh

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
elif [ ${1} == "sublivim" ]
then
	sublivim_install
else
	quick_setup ${1}
fi
