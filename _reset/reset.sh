#!bin/bash

reset_session() {
	touch ~/.reset
	touch ~/.reset_library
	echo "You can now log out to RESET the session."
}

delete_file() {
	if [ -f ${1} ]; then
		rm ${1}
	fi
}

no_reset() {
	delete_file ~/.reset
	delete_file ~/.reset_library
	echo "Reset cancelled."
}
