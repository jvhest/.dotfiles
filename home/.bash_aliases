#######################################################
# ALIASES
#######################################################

# settings for common commands
alias v="nvim"
alias cp="cp -iv"
alias mv="mv -iv"
alias rm="rm -vI"
alias bc="bc -ql"
alias mkd="mkdir -pv"
alias ps='ps auxf'
alias cls='clear'
alias apt-get='sudo apt-get'
alias egrep='grep --color=auto'
alias stow='stow --target=/home/jvh/'

# navigation
alias ..='cd ..'
alias ...='cd ../..'
alias l='exa -ll --color=always --group-directories-first'
alias ls='exa -al --header --icons --group-directories-first'
alias tree='tree -CAhF --dirsfirst'
alias treed='tree -CAFd'
alias r='ranger --choosedir=$HOME/.rangerdir; LASTDIR=`cat $HOME/.rangerdir`; cd "$LASTDIR"'

# disk & processes
alias diskspace="du -S | sort -n -r |more"
alias folders='du -h --max-depth=1'
alias folderssort='find . -maxdepth 1 -type d -print0 | xargs -0 du -sk | sort -rn'
alias mountedinfo='df -hT'
alias topcpu="/bin/ps -eo pcpu,pid,user,args | sort -k 1 -r | head -10"

# pdf / epub reader
alias mu="mupdf-gl -A 8 -B 282C34 -C FFFFFF -W 600 -H 800 -S 15"
alias notify-send="dunstify "

# application aliases
alias v="$EDITOR"
alias vx="NVIM_APPNAME=nvim-xl nvim"
alias za="zathura"
# alias lf="lfcd"

# git aliases
alias g="git"
alias gst="git status"
alias gc="git commit"
alias ga="git add"
alias gpl="git pull"
alias gpom="git pull origin main"
alias gpu="git push"
alias gpuom="git push origin main"
alias gd="git diff"
alias gch="git checkout"
alias gnb="git checkout -b"
alias gac="git add . && git commit"
alias grs="git restore --staged ."
alias gre="git restore"
alias gr="git remote"
alias gcl="git clone"
alias gl="git log --pretty=oneline"
alias glg="git log --graph --abbrev-commit --decorate --format=format:'%C(bold green)%h%C(reset) - %C(bold cyan)%aD%C(reset) %C(bold yellow)(%ar)%C(reset)%C(auto)%d%C(reset)%n''          %C(white)%s%C(reset) %C(dim white)- %an%C(reset)' --all"
alias gt="git ls-tree -r master --name-only"
alias grm="git remote"
alias gb="git branch"
alias gf="git fetch"
alias gsave="git commit -m 'save'"

# Aliases
alias install='sudo apt install'
alias update='sudo apt update'
alias upgrade='sudo nala upgrade'
alias uplist='nala list --upgradable'
alias remove='sudo nala autoremove'
alias df='df -h'
alias free='free -h'
alias myip="ip -f inet address | grep inet | grep -v 'lo$' | cut -d ' ' -f 6,13 && curl ifconfig.me && echo ' external ip'"
alias x="exit"

# Dotfiles & Files
alias bs='micro ~/.bashrc'
alias rebash="source ~/.bashrc; echo '.dotfiles have been refreshed!'"
alias v="nvim"
alias vv="nvim ."
alias e="micro"
alias g.="cd ~/.config"
alias gd="cd ~/Downloads"
alias gdw="cd ~/.config/suckless/dwm"
alias gds="cd ~/.config/suckless/slstatus"
