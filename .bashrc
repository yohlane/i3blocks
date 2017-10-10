#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls -hF --color=auto'
eval `dircolors -b ~/dircolors-solarized/dircolors.ansi-dark` 
export LS_COLORS="${LS_COLORS}*.out=31:*.nmap=32:*.dirb=32:*.list=36:*.list-nessus=36:*.list=36:*.rtt=36:*.burp=35:"

alias pac='sudo pacman'
alias ll='ls -al'
alias la='ls -a'
alias ipa='ip a'

export PATH="/home/yge/vm_share/tools/nmap-wrappers:/home/yge/bin:${PATH}"
export NMAP_PRIVILEGED=yep

#. /home/yge/workspace/tools/traces/tmux-log.sh
#export TERM=xterm-256color
alias grep='grep --color -n'
alias cp="rsync -P"
alias mv="cp --remove-source-files"

if [[ "$SSH_AGENT_PID" == "" ]]; then
    eval "$(<~/.ssh-agent-thing)" > /dev/null
fi
alias ..="cd .."
