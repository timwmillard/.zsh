
export EDITOR=vi

# Local Bin
PATH=~/bin:$PATH


PATH=~/.local/bin:$PATH

# Go Path
export GOPATH=$(go env GOPATH)
export PATH=$(go env GOPATH)/bin:$PATH

# Ruby
# By default, binaries installed by gem will be placed into:
export PATH=/opt/homebrew/lib/ruby/gems/3.3.0/bin:/opt/homebrew/opt/ruby/bin:$PATH

export PATH="/opt/homebrew/opt/postgresql@17/bin:$PATH"

# Oh my zsh
source $HOME/.oh-my-zshrc

set -o vi
bindkey -M vicmd ^E edit-command-line

set -o noglob

export AWS_PAGER=""

alias emsdk_env="source /usr/local/emsdk/emsdk_env.sh"
# source /usr/local/emsdk/emsdk_env.sh

fpath=(~/.stripe $fpath)
autoload -Uz compinit && compinit -i


# The next line updates PATH for the Google Cloud SDK.
if [ -f '/usr/local/google-cloud-sdk/path.zsh.inc' ]; then . '/usr/local/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/usr/local/google-cloud-sdk/completion.zsh.inc' ]; then . '/usr/local/google-cloud-sdk/completion.zsh.inc'; fi

# Kubectl auto complete
[[ $commands[kubectl] ]] && source <(kubectl completion zsh)

[ -f "/Users/tim/.ghcup/env" ] && source "/Users/tim/.ghcup/env" # ghcup-env

# Docker Host for Supabase
export DOCKER_HOST=unix:///Users/tim/.docker/run/docker.sock

# Github
# Credit: Mick Love
# Requires:
#   - fzf (https://github.com/junegunn/fzf)
#   - gh [Github cli](https://github.com/cli/cli)
alias pr-checkout='git fetch --all && gh pr list --json number,createdAt,headRefName,author,title,url | jq -r ".[] | [.number, .createdAt, .headRefName, .title, .author.login, .url] | @csv" | sort -r | column -ts $"," | sed "s/\"//g" | fzf | awk "{printf \$3}" | xargs -I_ git checkout _'
alias pr-view='gh pr list --json number,url,createdAt,headRefName,author,title | jq -r ".[] | [.number, .url, .createdAt, .headRefName, .title, .author.login ] | @csv" | sort -r | column -ts $"," | sed "s/\"//g" | fzf | awk "{printf \$2}" | xargs -I_ open "_"'


# bun completions
[ -s "/Users/tim/.bun/_bun" ] && source "/Users/tim/.bun/_bun"

# bun
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"


# Postgres commands build from source
# Running on port 5430
alias tclusterdb=/usr/local/pgsql/bin/clusterdb
alias tcreatedb=/usr/local/pgsql/bin/createdb
alias tcreateuser=/usr/local/pgsql/bin/createuser
alias tdropdb=/usr/local/pgsql/bin/dropdb
alias tdropuser=/usr/local/pgsql/bin/dropuser
alias tecpg=/usr/local/pgsql/bin/ecpg
alias tinitdb=/usr/local/pgsql/bin/initdb
alias tpg=/usr/local/pgsql/bin/pg_amcheck
alias tpg=/usr/local/pgsql/bin/pg_archivecleanup
alias tpg=/usr/local/pgsql/bin/pg_basebackup
alias tpg=/usr/local/pgsql/bin/pg_checksums
alias tpg=/usr/local/pgsql/bin/pg_config
alias tpg=/usr/local/pgsql/bin/pg_controldata
alias tpg=/usr/local/pgsql/bin/pg_ctl
alias tpg=/usr/local/pgsql/bin/pg_dump
alias tpg=/usr/local/pgsql/bin/pg_dumpall
alias tpg=/usr/local/pgsql/bin/pg_isready
alias tpg=/usr/local/pgsql/bin/pg_receivewal
alias tpg=/usr/local/pgsql/bin/pg_recvlogical
alias tpg=/usr/local/pgsql/bin/pg_resetwal
alias tpg=/usr/local/pgsql/bin/pg_restore
alias tpg=/usr/local/pgsql/bin/pg_rewind
alias tpg=/usr/local/pgsql/bin/pg_test_fsync
alias tpg=/usr/local/pgsql/bin/pg_test_timing
alias tpg=/usr/local/pgsql/bin/pg_upgrade
alias tpg=/usr/local/pgsql/bin/pg_verifybackup
alias tpg=/usr/local/pgsql/bin/pg_waldump
alias tpgbench=/usr/local/pgsql/bin/pgbench
alias tpostgres=/usr/local/pgsql/bin/postgres
alias tpsql=/usr/local/pgsql/bin/psql
alias treindexdb=/usr/local/pgsql/bin/reindexdb
alias tvacuumdb=/usr/local/pgsql/bin/vacuumdb

alias icat="kitten icat"

export PSQL_PAGER='pspg -X -b'

export PATH="/opt/homebrew/opt/bison/bin:$PATH"

# Erlang shell with vi mode
alias verl="rlwrap erl -oldshell"

# Elixir shell with vi mode
alias viex="rlwrap --always-readline iex"

