## Basic Alias
alias l='ls -lh'
alias ll='ls -lha'
alias lll='ls -lahR'

alias du='du -h'
alias sudo='sudo '
alias shutdown='sudo shutdown -h now'
alias kl='emacs'
alias mm='mkdir'
alias ..='cd ..'
alias cp='gcp'

alias clean='make fclean ; find . \( -name "#*#" -o -name "*~" -o -name "*.dSYM" -o -name ".~lock.*" -o -name ".#*" -o -name "*.o" -o -name "a.out*" -o -name ".DS_Store"  -o -name ".vim" -o -name ".viminfo"  -o -name  "pgadmin.log"  \) | xargs rm -rf ; clear ; ll'

alias alias_edit='kl ~/.bash_aliases'

##DOCKER
alias dockerun="sudo docker run --rm --net host -ti --privileged -v /dev/bus/usb:/dev/bus/usb -v ~/.gradle:/root/.gradle -v \$PWD:/myApp:rw"
alias dockerclr="sudo docker ps -a | grep Exited | awk {'print $1'} | xargs docker rm"
alias dockerclri="sudo docker images -a | grep none | awk '{print $3}' | xargs docker rmi"

##GIT
alias ga='git add'
alias gs='git status'
alias gl='git log'
alias gc='git commit -m'
alias gk='git checkout'
alias gb='git branch'
alias gp='git push'
alias gsave='git commit -m "Save" && git push'

##APT/SNAP
alias up='sudo apt-get update && sudo apt-get upgrade && sudo snap refresh'
alias aptup='sudo apt-get update'
alias aptupg='sudo apt-get upgrade'
alias apts='apt-cache search'
alias aptshow='apt-cache show'
alias aptl='sudo emacs /etc/apt/sources.list'
alias apti='sudo apt-get install'
alias aptr='sudo apt-get remove'
alias snapr='sudo snap refresh'

##VPN
alias pvpn='sudo protonvpn'
