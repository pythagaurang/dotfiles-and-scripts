#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

[[ $DISPLAY ]] && shopt -s checkwinsize

# colors
darkgrey="$(tput bold ; tput setaf 0)"
white="$(tput bold ; tput setaf 7)"
blue="$(tput bold; tput setaf 4)"
cyan="$(tput bold; tput setaf 6)"
nc="$(tput sgr0)"

# exports
export PATH="${HOME}/.bin:/usr/bin:/sbin:/usr/sbin:/usr/local/bin:${HOME}/.flutter/bin:${HOME}/.android-studio/bin:"
export PATH="${PATH}/usr/local/sbin:/opt/bin:/usr/bin/core_perl:/usr/games/bin:"
export PS1='\[$darkgrey\] \w \[$white\]\$\[$nc\] '
export HISTSIZE=300
export HISTFILESIZE=300000
export EDITOR="vim"
export ANDROID_SDK_ROOT="${HOME}/.Android/Sdk"
export QT_QPA_PLATFORMTHEME=gtk2

# alias
alias ls="ls --color -h"
alias vi="vim"
alias shred="shred -zf"
alias wget="wget -U 'noleak'"
alias curl="curl --user-agent 'noleak'"
alias clns="clear && source ~/.bashrc"

alias clcd="clear && cd"
alias cl="clear"

alias cd..="cd .."
alias cdtw="cd ~/Programming/Mainline/College/6"
alias cdfl="cd ~/Programming/Mainline/Internship/int_psl/kvasir-ibmfl"
alias actfl="actconda && conda deactivate && conda activate ibm-fl"
alias cdsl="cd ~/Programming/Sideline"
alias cdml="cd ~/Programming/Mainline"
alias cdpro="cd ~/Programming"
alias cdan="cd ~/Programming/Mainline/Android"

alias xrandrhdmi="xrandr --output HDMI-1 --mode 1920x1080"
alias r="R"
alias mpv="mpv --vo=gpu --hwdec=vaapi"
alias open="xdg-open"
alias yay="paru"
alias sl="ls"
alias scmar="systemctl start mariadb"
alias maria="mariadb -u root -p"
alias gvenv="source ~/.venv/bin/activate"
alias svenv="source ./.venv/bin/activate"
alias deemix-web="source ~/Music/.venv/bin/activate && python ~/Music/deemix-pyweb/deemix-pyweb.py"
alias outage="python ~/Programming/Sideline/Android/Outages/script/outage.py" 
[ -r /usr/share/bash-completion/bash_completion   ] && . /usr/share/bash-completion/bash_completion

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
actconda(){
__conda_setup="$('/home/flash/.miniconda3/bin/conda' 'shell.bash' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/home/flash/.miniconda3/etc/profile.d/conda.sh" ]; then
        . "/home/flash/.miniconda3/etc/profile.d/conda.sh"
    else
        export PATH="/home/flash/.miniconda3/bin:$PATH"
    fi
fi
unset __conda_setup
}
# <<< conda initialize <<<

#functions

github(){
eval "$(ssh-agent -s)"
ssh-add ~/.ssh/github 
}
gitlab(){
eval "$(ssh-agent -s)"
ssh-add ~/.ssh/gitlab
}
