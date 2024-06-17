# export PATH=$HOME/bin:/usr/local/bin:$PATH
export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="rkj-repos"

plugins=(git)
source $ZSH/oh-my-zsh.sh
# export LANG=en_US.UTF-8

################# Projects #######################
alias keep_monitor="caffeinate -dims /Users/dmc/Desktop/Stuff/SH\ Scripts/coffee_monitor.sh"
################# Projects #######################

################# Config #######################
#PROMPT='%F{51}%#|%n|%1~%f:$ '
export PATH=$PATH:/Users/dmc/Library/Python/3.9/bin
eval "$(/opt/homebrew/bin/brew shellenv)"
alias pip='pip3'
alias python="python3"
alias config="sublime ~/.zshrc"
alias update_terminal="source ~/.zshrc"


################ WORK ############################
export PUPPETEER_EXPERIMENTAL_CHROMIUM_MAC_ARM=true
alias npmlist="npm list --depth=40 > ~/deps.txt && sublime ~/deps.txt"


################# Git #######################
alias rewrite='git commit --amend --no-edit'
alias please='git push --force-with-lease'
alias wipe='git reset --hard'
alias undo='git reset HEAD~'
alias git_history='git log origin/master..HEAD'
alias upload='git push -u origin HEAD'
alias readd='git add -- $(git diff --staged --name-only --relative)'
alias deforest='git removed-branches --prune --force'
alias nuke='git reset --hard @{u}'


################# Navigation #######################
alias desktop="cd ~/Desktop"
alias documents="cd ~/Documents"
alias downloads="cd ~/Downloads"
alias stuff="cd ~/Desktop/Stuff"
alias tree="find . -print | sed -e 's;[^/]*/;|____;g;s;____|; |;g'"
alias list="ls -lha"


################# Mac Helpers #######################
alias fixvolume="killall ControlStrip"
alias weather="curl wttr.in/san+antonio"
alias matrix="cmatrix"
alias cafe="caffeinate -dim cmatrix"
function pretty_csv {
    perl -pe 's/((?<=,)|(?<=^)),/ ,/g;' "$@" | column -t -s, | less  -F -S -X -K
}
function mytime {
    echo "Local Date/Time:" `date`
    echo "Local TimeStamp:" `date +%r`
    echo "Local Unix Time:" `date +%s`
    echo "UTC TIMESTAMP: " `date -u`
}
