export PATH=/bin:~/projects/node/installation/bin:~/projects/node/installation/lib:/opt/local/air_sdk/bin:/opt/local/bin:/opt/local/sbin/:$PATH
export EDITOR='mate'
source ~/.git-bash-prompt.sh
source ~/.git-completion.sh
alias start_nginx='sudo /opt/nginx/sbin/nginx'
alias start_memcached='rake memcached:start'
alias start_solr='rake solr:start RAILS_ENV=test && rake solr:start'
alias start_dev='start_memcached && start_nginx && start_solr'
alias ttr='touch tmp/restart.txt'

[[ -s $HOME/.rvm/scripts/rvm ]] && source $HOME/.rvm/scripts/rvm
