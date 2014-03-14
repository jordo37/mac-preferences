export CLICOLOR=1
export LSCOLORS=ExFxCxDxBxegedabagacad

alias SSH='ruby $(echo $PA_SCRIPT_FOLDER)/ssh.rb'
alias DEPLOY='ruby $(echo $PA_SCRIPT_FOLDER)/deploy.rb'
alias REDEPLOY='ruby $(echo $PA_SCRIPT_FOLDER)/redeploy.rb'
alias UPDATE_BRANCH='sh $(echo $PA_SCRIPT_FOLDER)/updateBranchPomFiles.sh'
export PA_SCRIPT_FOLDER='/Users/Jordan/Sites/rtb/scripts'
export AWS_CONFIG_FILE=~/.aws/awsconfig.txt
ssh-add ~/.ssh/pa-rtb-prod-nv.pem
ssh-add ~/.ssh/pa-rtb-prod-eu.pem

source ~/.aliases

[[ -s "$HOME/.rvm/scripts/rvm" ]] && . "$HOME/.rvm/scripts/rvm" 

if [ -f `brew --prefix`/etc/bash_completion ]; then
    . `brew --prefix`/etc/bash_completion
fi

function parse_git_branch { 
   git branch --no-color 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1)/' 
}

PSsave="\!\[\e[32;1m\] \[\033[35m\]\t\[\033[m\]-\[\033[36m\]\u\[\033[m\]@\[\033[32m\]\h:\[\033[33;1m\]\w\[\033[m\]\$(parse_git_branch)$ "
PS1="\!\[\e[32;1m\]\[\033[35m\]\t\[\033[m\]\[\033[36m\]\u\[\033[m\]\[\033[32m\]\h\[\033[33;1m\]\w\[\033[m\] \$(parse_git_branch)\$ "
#PS1='\h:\w\[\033[32m\] \$(parse_git_branch) \[\033[0m\]$ '
#export PS1="\h \t:\w \$(parse_git_branch)$ "
# correct minor misspellings
shopt -s cdspell

set completion-ignore-case on

##
# Your previous /Users/steve/.bash_profile file was backed up as /Users/steve/.bash_profile.macports-saved_2011-12-07_at_03:34:17
##

# MacPorts Installer addition on 2011-12-07_at_03:34:17: adding an appropriate PATH variable for use with MacPorts.
export JAVA_HOME=/System/Library/Frameworks/JavaVM.framework/Versions/1.5/Home
export PATH=$PATH:/Applications/Apache\ Flex/Flex/bin
export PATH=/usr/local/bin:/opt/local/bin:/opt/local/sbin:~/bin:$PATH
export PATH=/usr/local/share/npm/bin/:$PATH
# Finished adapting your PATH environment variable for use with MacPorts.


