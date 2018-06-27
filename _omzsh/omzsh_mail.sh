#/bin/bash

ZSHRC=~/.zshrc

remove_usermail(){
	sed -i'.bak' '/^USER=.*/ d'             $ZSHRC
	sed -i'.bak' '/^export USER.*/ d'       $ZSHRC
	sed -i'.bak' '/^MAIL=.*/ d'             $ZSHRC
	sed -i'.bak' '/^export MAIL.*/ d'       $ZSHRC
	rm ~/.zshrc.*
}

# Set User at LOGIN (whoami) and mail at LOGIN@student.42.fr
set_usermail() {
	ME="$(whoami)"
	remove_usermail
	echo "USER=${ME}"                    >> $ZSHRC
	echo "export USER"                   >> $ZSHRC
	echo "MAIL=\"\$USER@student.42.fr\"" >> $ZSHRC
	echo "export MAIL"                   >> $ZSHRC
}
