#
# Fish Aliases to be sourced
#
# Authors:
#   Finn Rutis 2019-11-15
# Last Modified
#   Finn Rutis 2021-10-21
#
# Bunches of Alises
#

# Regular aliases
alias c="clear"
alias h="history"
alias diskspace="du -S | sory -n -r | more"
alias mount="mount | column -t"
alias meminfo="free -g -l -t"

# Git aliases
alias gs="git status"
alias ga="git add"
alias gc="git commit"
alias gpull="git pull"
alias gpush="git push"

# Recursive Verbose Stuff
alias mkdir="mkdir -pv"
alias mv="mv -v"
alias rm="rm -rv"
alias mount="mount | column -t"

# Package Manager Aliases
alias upgradeall="sudo apt update && sudo apt upgrade -y && sudo apt autoremove -y"
alias apt="sudo apt"
alias apt-get="sudo apt"
alias aptitude="sudo aptitude"
alias pacman="sudo pacman"
alias vpm="sudo vpm"
alias vin="sudo vpm install"
alias vse="sudo vpm search"
alias xbps-install="sudo xbps-install"
alias yaourt="yay"

# Add color to grep
alias grep="grep --color=always"
alias sgrep="grep -R -n -H -C 5 --exclude-dir={.git,.svn,CVS}"

# Network stuff
alias ping="ping -c 5"
alias fastping="ping -c 100 -s 1"
alias ports="netstat -tulanp"
alias wget="wget -c"

# LS aliases
alias ls="ls"
alias la="ls -lAhF"
alias l="ls -lFh"
alias lr="ls -tRFh"
alias lt="ls -ltFh"
alias ll="ls -l"
alias ldot="ls -ld .*"

# Command line head tail shortcuts
#alias -g H="| head"
#alias -g T="| tail"
#alias -g G="| grep"
#alias -g L="| less"
#alias -g M="| most"
#alias -g LL="2>&1 | less"
#alias -g CA="2>&1 | cat -A"
#alias -g NE="2> /dev/null"
#alias -g NUL="> /dev/null 2>&1"
#alias -g P="2>&1| pygmentize -l pytb"

# Chmod aliases
alias mx="sudo chmod +x"

# always use nvim
alias vim="nvim"

# Script calling
alias relaunch="/home/tunnel/.config/polybar/launchi3.sh"
alias kahoot="cd /home/tunnel/Documents/Git/kahoot-tools && node run host"