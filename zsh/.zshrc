
################################################################################
################################ -- ZSHRC -- ###################################
################################################################################

###############
# -- Alias -- #
###############
#alias ls='ls -G'
alias l='ls -lh'
alias ll='ls -lha'
alias lll='ls -lahR'
alias sl='ls'

alias sudo='sudo '
alias kl='emacs'
alias mm='mkdir'
alias ..='cd ..'

alias clean='make fclean ; find . \( -name "#*#" -o -name "*~" -o -name "*.dSYM" -o -name ".~lock.*" -o -name ".#*" -o -name "*.o" -o -name "a.out*" -o -name ".DS_Store"  -o -name ".vim" -o -name ".viminfo"  -o -name  "pgadmin.log"  \) | xargs rm -rf ; clear ; ll'

## Git
alias ga='git add'
alias gs='git status'
alias gc='git commit -m'
alias gp='git push'
alias gsave='git commit -m "Save" && git push'

## Colors
alias grep="grep --color=auto"
alias fgrep="fgrep --color=auto"
alias egrep="egrep --color=auto"
# make less accept color codes and re-output them
alias less="less -R"

# Color aliases
if command -V dircolors >/dev/null 2>&1; then
	eval "$(dircolors -b)"
	# Only alias ls colors if dircolors is installed
	alias ls="ls -F --color=auto --group-directories-first"
fi

################
# -- Prompt -- #
################

# Let's have some colors first
autoload -U colors && colors

# Default colors:
# Blue for users, red for root, magenta for system users
local _time="%{$fg[yellow]%}[%*]"
local _path="%B%{$fg[blue]%}%(8~|...|)%7~"
local _usercol
if [[ $EUID -lt 1000 ]]; then
	# red for root, magenta for system users
	_usercol="%(!.%{$fg[red]%}.%{$fg[magenta]%})"
else
	_usercol="$fg[green]"
fi
local _user="%{$_usercol%}%n%{$fg[red]%}:"
local _prompt="%{$fg[red]%}$%{$_usercol%}"

PROMPT="$_prompt$_time $_user$_path%b%f%k$_prompt
> "

############################
# -- Script Application -- #
############################
export PATH=$PATH:~/.brew/bin
export HOMEBREW_CACHE=/tmp/Homebrew

# if [[ -f ~/config/preferences.sh ]]; then
#   source ~/config/preferences.sh
# fi

if [[ -f ~/config/colors.sh ]]; then
  source ~/config/colors.sh
fi

#################
# -- History -- #
#################
# Keep 1000 lines of history within the shell and save it to $HOME/.zsh_history
HISTSIZE=1000
SAVEHIST=1000
HISTFILE="$HOME/.zsh_history"

##################
# -- Keybinds -- #
##################

## Do not work on MAC
# Use emacs-style keybindings
bindkey -e

bindkey "$terminfo[khome]" beginning-of-line # Home
bindkey "$terminfo[kend]" end-of-line # End
bindkey "$terminfo[kich1]" overwrite-mode # Insert
bindkey "$terminfo[kdch1]" delete-char # Delete
bindkey "$terminfo[kcuu1]" up-line-or-history # Up
bindkey "$terminfo[kcud1]" down-line-or-history # Down
bindkey "$terminfo[kcub1]" backward-char # Left
bindkey "$terminfo[kcuf1]" forward-char # Right
# bindkey "$terminfo[kpp]" # PageUp
# bindkey "$terminfo[knp]" # PageDown

# Bind ctrl-left / ctrl-right
bindkey "\e[1;5D" backward-word
bindkey "\e[1;5C" forward-word
