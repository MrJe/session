#!bin/bash

reset_session() {
	touch ~/.reset
	touch ~/.reset_library
	echo "You can now log out to RESET the session"
}