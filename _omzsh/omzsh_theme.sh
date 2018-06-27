#/bin/bash

set_theme() {
	# Set theme with first arg, jsy by default
	if [ $# == 0 ]
	then
		THEMENAME=jsy
	else
		THEMENAME=${1}
	fi

	# Check if the theme exist, if not: jsy by default
	THEME=./themes/${THEMENAME}.zsh-theme
	if [ ! -e ${THEME} ]
	then
		echo "Warning: theme doesn't exist, switch to default theme \"jsy\"."
		THEMENAME=jsy
		THEME=./themes/${THEMENAME}.zsh-theme
	fi

	# Copy the theme in the right directory of OMZSH Themes
	cp ${THEME} ~/.oh-my-zsh/themes/.
	# Replace de line 10 by the selected theme
	sed -i'.bak' '10s/.*/ZSH_THEME="${THEMENAME}"/' ~/.zshrc
}
