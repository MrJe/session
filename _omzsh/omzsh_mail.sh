#/bin/bash

# Set User at LOGIN (whoami) and mail at LOGIN@student.42.fr
ME="$(whoami)"
USERMAIL="USER=${ME}
export USER
MAIL=\"$USER@student.42.fr\"
export MAIL"
echo "${USERMAIL}" >> ~/.zshrc
