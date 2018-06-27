# JSY - modification of the Dallas theme by Jessy Michaud. #
############################################################
#
# The time (not the date)
# The RVM version and gemset (omitting the 'ruby' name if it's MRI)
# The path to the current directory
# The Git branch : clean vs dirty

# C O L O R S
##############
NC="%{$reset_color%}"
BOLD_BLUE="%{$fg_bold[blue]%}"
GREEN="%{$fg[green]%}"
MAGENTA="%{$fg[magenta]%}"
RED="%{$fg[red]%}"
YELLOW="%{$fg[yellow]%}"

# Git variables are used by the oh-my-zsh git_prompt_info helper
#################################################################
# For the git prompt, use a white : and green text for the branch name.
ZSH_THEME_GIT_PROMPT_PREFIX="$NC:$GREEN"
# Close it all off by resetting the color and styles.
ZSH_THEME_GIT_PROMPT_SUFFIX="$NC"
# If the branche is clean, use a green ✓.
ZSH_THEME_GIT_PROMPT_CLEAN="$GREEN ✓"
# Change the green ✓ by a red ✗ if this branch is diiirrrty! Dirty branch!
ZSH_THEME_GIT_PROMPT_DIRTY="$RED ✗"

# V A R I A B L E S
####################
# Grab the current time (%T) wrapped in {}: {%T}. (tips : %D for date)
JSY_TIME_="$NC{$YELLOW%T$NC}"
# Grab the current machine name (%m).
JSY_CURRENT_MACH_="$YELLOW%m$NC:"
# Grab the current filepath.
JSY_DIR_="$BOLD_BLUE%~\$(git_prompt_info)$NC "
# Use a $ for normal users and a # for privelaged (root) users.
JSY_PROMPT="$NC%(!.#.$) "

# Grab the current versio of ruby in use (via RM): [ruby-1.8-7]
if [ -e ~/.rvm/bin/rvm-prompt ]; then
  JSY_RUBY_="$NC"["$MAGENTA\${\$(~/.rvm/bin/rvm-prompt i v g)#ruby-}$NC"]"$NC"
else
  if which rbenv &> /dev/null; then
    JSY_RUBY_="$NC"["$MAGENTA\${\$(rbenv version | sed -e 's/ (set.*$//' -e 's/^ruby-//')}$NC"]"$NC"
  fi
fi

# Put it all together!
PROMPT="$JSY_TIME_$JSY_RUBY_$JSY_CURRENT_MACH_$JSY_DIR_$JSY_PROMPT"
