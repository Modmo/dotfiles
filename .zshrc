# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
bindkey -e

#monitorfix i3
#xrandr --output DP-1 --auto --right-of HDMI-2

# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/hhauk/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall
#
#Prompt
PROMPT="%T %F{blue}%n%f@%F{red}%m%f %F{green}%~%f -> "

alias ls='ls --color=auto'

#prompt command

set -o vi
bindkey "^[[1;5C" forward-word
bindkey "^[[1;5D" backward-word

export EDITOR='vi'
export VISUAL='vi'

##aliases

#general
alias logs='journalctl -xe'

#work
alias ude='sudo openconnect --authgroup=UDE-Intern -u hhauk vpn.ude.oslo.no'
alias console='sudo screen /dev/ttyUSB0 9600'
alias jump='sudo ssh hhauk@193.156.192.120'
alias asdm='./Documents/work/asdm 193.156.192.133'

#pacman
alias upgrade='sudo pacman -Syyu'
alias install='sudo pacman -S'
alias remove='sudo pacman -Rns'

alias edit='sudo vim'

#weather & astronomy
alias weather='curl http://wttr.in/Norway'
alias mapweather='curl https://v3.wttr.in/Oslo.png | kitty icat --align=left'
alias grafweather='curl http://v2.wttr.in/Norway'
alias moonphase='curl http://wttr.in/moon'


#highlighting
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
