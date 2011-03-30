
echo "Assigning environment variables"

export PATH=/bin:~/projects/node/installation/bin:~/projects/node/installation/lib:/opt/local/air_sdk/bin:/opt/local/bin:/opt/local/sbin/:$PATH
export EDITOR='mate'

echo "Assigning command aliases"

alias start_nginx='sudo /opt/nginx/sbin/nginx'
alias start_memcached='rake memcached:start'
alias start_solr='rake solr:start RAILS_ENV=test && rake solr:start'
alias start_dev='start_memcached && start_nginx && start_solr'
alias ttr='touch tmp/restart.txt'
alias reload='~/.bash_profile'

echo "Load other scripts"

[[ -f $HOME/.git-bash-prompt.sh ]] && source $HOME/.git-bash-prompt.sh
[[ -f $HOME/.git-completion.sh ]] && source $HOME/.git-completion.sh
[[ -s $HOME/.rvm/scripts/rvm ]] && source $HOME/.rvm/scripts/rvm
