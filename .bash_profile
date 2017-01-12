# Add some colors to the terminal
export PS1="\[\033[36m\]\u\[\033[m\]@\[\033[32m\]\h:\[\033[33;1m\]\w\[\033[m\]\$ "
export CLICOLOR=1
export LSCOLORS=ExFxBxDxCxegedabagacad
alias ls='ls -GFh'

# Composer
export PATH="/usr/local/sbin:$PATH"

# Laravel
export PATH=~/.composer/vendor/bin":$PATH"

# Laravel aliases
alias homestead_edit='atom ~/.homestead/Homestead.yaml'
alias homestead_up='cd ~/Homestead/ && vagrant up'
alias homestead_halt='cd ~/Homestead/ && vagrant halt'
alias homestead_provision='cd ~/Homestead/ && vagrant provision'
alias homestead_ssh='cd ~/Homestead/ && vagrant ssh'
alias homestead_hosts='sudo vim /etc/hosts'
alias vm='cd ~/Homestead/ && vagrant ssh'
alias aa="php artisan"
alias code="cd ~/Code"

# Show git branch in terminal
parse_git_branch() {
    git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}
export PS1="\u@\h \[\033[32m\]\w - \$(parse_git_branch)\[\033[00m\] $ "
