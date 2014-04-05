#####################################################################
#####sistem aliases

alias c="clear"
alias h="sudo hibernate"

alias agi='sudo apt-get install'
alias agr='sudo apt-get remove'
alias agu='sudo apt-get update'
alias acs='apt-cache search'

alias hg='history | grep $1'

function cdl { cd $1; ls;}

#####################################################################

##rails
alias rs='rails s'
alias rr='rake routes'


#####################################################################
######git aliases

alias gs='git status '
alias ga='git add '
alias gb='git branch '
alias gc='git commit'
alias gd='git diff'
alias go='git checkout '
alias gh='log --pretty=format:\"%h %ad | %s%d [%an]\" --graph --date=short'
alias gl='git log --oneline '
alias gp='git push '
alias gpl='git pull '


######################################################################


#####
#RUBY
#####

alias irbs='irb --simple-prompt'

#tmux kill sessions (all sessions)
alias tks='tmux ls | awk '\''{print $1}'\'' | sed '\''s/://g'\'' | xargs -I{} tmux kill-session -t {}'
