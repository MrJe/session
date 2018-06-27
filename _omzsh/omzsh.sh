#/bin/bash

source ${PATH_SESSION}/_omzsh/omzsh_theme.sh
source ${PATH_SESSION}/_omzsh/omzsh_mail.sh

omzsh() {
	# Install OMZSH
	sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

	# Set theme with first arg, jsy by default
	set_theme ${1}

	# Set User at LOGIN (whoami) and mail at LOGIN@student.42.fr
	set_usermail
}

omzsh_uninstall() {
	rm -rf ~/.oh-my-zsh 2> /dev/null
	rm ~/.zshrc*        2> /dev/null
	rm ~/.zcompdump*    2> /dev/null
}
