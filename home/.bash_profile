
echo "Assigning environment variables"

export PATH=/bin:~/projects/node/installation/bin:~/projects/node/installation/lib:/opt/local/airsdk/bin:/opt/local/bin:/opt/local/sbin/:$PATH
export EDITOR='mate'
export ELASTICSEARCH_HOST=localhost:9200

echo "Assigning command aliases"

alias start_nginx='sudo /opt/nginx/sbin/nginx'
alias start_memcached='rake memcached:start'
alias start_solr='rake solr:start RAILS_ENV=test && rake solr:start'
alias start_elastic_search='cd ~/projects/elasticsearch; ./bin/elasticsearch'
alias start_search=start_elastic_search # start_solr
alias start_dev='start_memcached && start_nginx && start_search'
alias ttr='touch tmp/restart.txt'
alias reload='~/.bash_profile'

echo "Loading other scripts"

[[ -f /opt/local/etc/bash_completion ]] && source /opt/local/etc/bash_completion
[[ -f $HOME/.git-bash-prompt.sh ]] && source $HOME/.git-bash-prompt.sh
[[ -s $HOME/.rvm/scripts/rvm ]] && source $HOME/.rvm/scripts/rvm
