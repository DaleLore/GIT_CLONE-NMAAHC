# set .zprofile to read:

# if [ -f $HOME/.zsh_configfiles/.zshrc ]; then
# source $HOME/.zsh_configfiles/.zshrc
# fi
# eval "$(/opt/homebrew/bin/brew shellenv)"	

Color_Off='\e[0m'       # Text Reset

# Regular Colors
Black='\e[0;30m'        # Black
Red='\e[0;31m'          # Red
Green='\e[0;32m'        # Green
Yellow='\e[0;33m'       # Yellow
Blue='\e[0;34m'         # Blue
Purple='\e[0;35m'       # Purple
Cyan='\e[0;36m'         # Cyan
White='\e[0;37m'        # White

# Bold
BBlack='\e[1;30m'       # Black
BRed='\e[1;31m'         # Red
BGreen='\e[1;32m'       # Green
BYellow='\e[1;33m'      # Yellow
BBlue='\e[1;34m'        # Blue
BPurple='\e[1;35m'      # Purple
BCyan='\e[1;36m'        # Cyan
BWhite='\e[1;37m'       # White

# Underline
UBlack='\e[4;30m'       # Black
URed='\e[4;31m'         # Red
UGreen='\e[4;32m'       # Green
UYellow='\e[4;33m'      # Yellow
UBlue='\e[4;34m'        # Blue
UPurple='\e[4;35m'      # Purple
UCyan='\e[4;36m'        # Cyan
UWhite='\e[4;37m'       # White


#if [ -f ~/.zsh_configfiles/.zshrc_colors ]; then
#source ~/.zsh_configfiles/.zshrc_colors
#fi

#if [ -f ~/.zsh_configfiles/.zshrc_alias ]; then
#source ~/.zsh_configfiles/.zshrc_alias
#fi

#if [ -f ~/.zsh_configfiles/.zshrc_functions ]; then
#source ~/.zsh_configfiles/.zshrc_functions
#fi

# create symlink so that .bashrc is linked to your bashrc file installed by hombrew
# source /usr/local/bin/zshrc
#ln -sfn /usr/local/bin/zshrc ~/.bashrc
#ln -sfn /usr/local/bin/zshrc_alias ~~/.zsh_configfiles/.zshrc_alias
#ln -sfn /usr/local/bin/zshrc_colors ~/.zsh_configfiles/.zshrc_colors
#ln -sfn /usr/local/bin/zshrc_functions ~/.zsh_configfiles/.zshrc_functions

MYNAME='NMAAHC Media Conservation'
export MYNAME

printf "\n${BBlue}Hello ${MYNAME}!\n"
printf "${BWhite}Be All That You Can Be Today!\n"
printf "${BRed}Let's Go!${Color_Off}\n"

pre_command () {
    printf "\n$BIYellow%s\n${Color_Off}" "$PWD"
}

PROMPT_COMMAND=pre_command

precmd() {eval "$PROMPT_COMMAND"}

PROMPT='%B%F{cyan}≈:≈%f%b '

export LESS='-MN'

# must use double quotes here so Unix expands ${PATH} and doesn't read it as a directory
# default OS X PATH: /usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin:/usr/local/sbin:/usr/X11/bin

export PATH="/usr/local/bin:~/bin:/opt/homebrew/bin:/usr/bin:/bin:/usr/local/sbin:/usr/sbin:/sbin:/usr/X11/bin:"
export EDITOR="/Applications/Sublime\ Text.app/Contents/SharedSupport/bin/subl"
fpath=( $HOME/.zsh_configFiles/zsh_functions "${fpath[@]}" )

# history modifications
export HISTSIZE=1000 #500 is default
export HISTFILESIZE=1000000
export HISTTIMEFORMAT='%b %d %I:%M %p ' # using strftime format
export HISTCONTROL=ignoreboth # ignoreups:ignorespace
export HISTIGNORE="history:pwd:exit:df:ls:ls -la:ll"

# ls colors
export CLICOLOR=1
export LSCOLORS=ExFxBxDxCxegedabagacad

# shopt
# shopt -s globstar

# new aliases
alias ll="ls -lahG"
alias ls="ls -1"
alias home="cd ~"
alias up="cd .."
alias h="history"
alias subl="/Applications/Sublime\ Text.app/Contents/SharedSupport/bin/subl"

# command option aliases
alias mv="mv -iv"
alias cp="cp -iv"
alias rm="rm -iv"
alias df="df -h"
alias du="du -h"
alias mkdir="mkdir -p"
alias sublime="open -a "Sublime Text""
alias textedit="	open -a TextEdit"
alias diffy="diff -y --suppress-common-lines --width=250"
alias showFiles="defaults write com.apple.finder AppleShowAllFiles YES; killall Finder /System/Library/CoreServices/Finder.app"
alias hideFiles="defaults write com.apple.finder AppleShowAllFiles NO; killall Finder /System/Library/CoreServices/Finder.app"
alias brewUp="brew update && brew upgrade && brew doctor"
alias treeL="tree -RapugD --si --du"
alias gpa="git-pull-all"


# typo aliases
alias sulbime="sublime"

W3C Accessibility Guidelines (WCAG) 3.0
