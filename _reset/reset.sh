#!bin/bash

reset_session() {
	touch ~/.reset
	touch ~/.reset_library
	echo "You can now log out to RESET the session."
}

no_reset() {
	rm ~/.reset
	rm ~/.reset_library
	echo "Reset cancelled."
}
