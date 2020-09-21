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
#alias cp='gcp'

alias clean='make fclean ; find . \( -name "#*#" -o -name "*~" -o -name "*.dSYM" -o -name ".~lock.*" -o -name ".#*" -o -name "*.o" -o -name "a.out*" -o -name ".DS_Store"  -o -name ".vim" -o -name ".viminfo"  -o -name  "pgadmin.log"  \) | xargs rm -rf ; clear ; ll'

alias alias_edit='kl ~/.bash_aliases'

##DOCKER
alias dockerun="sudo docker run --rm --net host -ti --privileged -v /dev/bus/usb:/dev/bus/usb -v ~/.gradle:/root/.gradle -v \$PWD:/myApp:rw"
alias dockerclr="sudo docker ps -a | grep Exited | awk {'print $1'} | xargs docker rm"
alias dockerclri="sudo docker images -a | grep none | awk '{print $3}' | xargs docker rmi"
alias dockerclean="docker system prune -a"
alias dockerhelp='echo "
- dockerclean:
Delete all unused overlays in  the docker cache file system
"'

##GIT
alias ga='git add'
alias gb='git branch'
alias gc='git commit -m'
alias gd='git stash drop'
alias gk='git checkout'
alias gl='git log'
alias gll='git stash list'
alias gm='git merge'
alias gmf='git merge --no-ff'
alias gp='git push'
alias gpt='git push --tag'
alias gs='git status'
alias gsave='git commit -m "Save" && git push'
alias gt='git tag'
alias gu='git pull'
alias gw='git stash'
alias gy='git stash pop'
alias gch='echo "
feat : a new feature
fix : a bug fix
docs : changes to documentation
style : formatting, missing semi-colons, etc.; no code change
refactor : refactoring production code
test : adding tests, refactoring test; no production code change
chore : updating build tasks, package manager configs, etc.; no production code change
"'
alias gh='echo "
- Remove a local TAG:
	git tag -d TAG
- Remove a remote TAG:
	git push origin :refs/tags/TAG

- Connect your current branch to track remote branch:
	git branch --set-upstream-to origin/NAMEBRANCH

- Drop a particular Stash
  	gd || git stash drop stash@{index-number}
	!! index-number default value == 0 !!

- Clear all stashes
  	git stash clear
"'




##APT/SNAP
alias up='sudo apt-get update && sudo apt-get upgrade && sudo systemctl unmask snapd.service && sudo snap refresh && sudo ~/.config/remove_old_snap.sh && sudo rm -rf /var/lib/snapd/cache/* && sudo systemctl mask snapd.service'
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

##KUBECTL
alias kb='kubectl'
alias kbc='kubectl config use-context'
alias kbg='kubectl config get-contexts'
alias kbn='kubectl config set-context --current --namespace'
alias kbns='kubectl get namespaces'
alias kbp='kubectl get pods'

alias kh='echo "kubectl Help:
# Change the current context
- kbc=kubectl config use-context [CONTEXT_NAME]
# List the available contexts
- kbg=kubectl config get-contexts
# Change the current namespace
- kbn=kubectl config set-context --current --namespace [NAMESPACE]
# Get the list of all namespaces
- kbns=kubectl get namespaces
# Get the pods of the current namespace, use -n [NAMESPACE] to specified a namespace
# or use "kbn" cmd
- kbp=kubectl get pods
"'