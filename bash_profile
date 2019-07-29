test -f ~/.git-completion.bash && . $_
shopt -s autocd

function homestead() {
    ( cd ~/SourceCode/Homestead && vagrant $* )
}
function laradock() {
    ( cd ~/SourceCode/laradock && docker-compose $* )
}
function laradockup() {
    ( cd ~/SourceCode/laradock && docker-compose up -d nginx workspace $* )
}
function laradockworkspace() {
    ( cd ~/SourceCode/laradock && docker-compose exec workspace bash )
}
function py() {
    python3.7 $*
}
# Setting PATH for Python 3.7
# The original version is saved in .bash_profile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/3.7/bin:${PATH}"
export PATH

alias gcb='git checkout -b'
alias gfa='git fetch --all'
alias ggpush='git push -u origin HEAD'
alias gp='git push'
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
