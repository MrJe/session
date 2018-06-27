#/bin/bash

set_theme() {
	# Set theme with first arg, jsy by default
	if [ $# == 0 ]
	then
		THEME_NAME=jsy
	else
		THEME_NAME=${1}
	fi

	THEMES_DIR=${PATH_SESSION}/_omzsh/themes

	# Check if the theme exist, if not: jsy by default
	THEME=${THEMES_DIR}/${THEME_NAME}.zsh-theme
	if [ ! -e ${THEME} ]
	then
		echo "Warning: theme doesn't exist, switch to default theme \"jsy\"."
		THEME_NAME=jsy
		THEME=${THEMES_DIR}/${THEME_NAME}.zsh-theme
	fi

	# Copy the theme in the right directory of OMZSH Themes
	cp ${THEME} ~/.oh-my-zsh/themes/.
	# Replace de line 10 by the selected theme
	sed -i'.bak' "s/^ZSH_THEME=.*/ZSH_THEME=\"${THEME_NAME}\"/" ~/.zshrc
	rm ~/.zshrc.*
}
