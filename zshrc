
export EDITOR=vi

# Local Bin
PATH=$PATH:~/bin

# Go Path
GOPATH=$(go env GOPATH)
PATH=$PATH:$(go env GOPATH)/bin


# Oh my zsh
source $HOME/.oh-my-zshrc

set -o vi

export AWS_PAGER=""

alias emsdk_env="source /usr/local/emsdk/emsdk_env.sh"

fpath=(~/.stripe $fpath)
autoload -Uz compinit && compinit -i


# The next line updates PATH for the Google Cloud SDK.
if [ -f '/usr/local/google-cloud-sdk/path.zsh.inc' ]; then . '/usr/local/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/usr/local/google-cloud-sdk/completion.zsh.inc' ]; then . '/usr/local/google-cloud-sdk/completion.zsh.inc'; fi

# Kubectl auto complete
[[ $commands[kubectl] ]] && source <(kubectl completion zsh)

[ -f "/Users/tim/.ghcup/env" ] && source "/Users/tim/.ghcup/env" # ghcup-env
source /Users/tim/.docker/init-zsh.sh || true # Added by Docker Desktop

# Docker Host for Supabase
export DOCKER_HOST=unix:///Users/tim/.docker/run/docker.sock

# Github
# Credit: Mick Love
# Requires:
#   - fzf (https://github.com/junegunn/fzf)
#   - gh [Github cli](https://github.com/cli/cli)
alias pr-checkout='git fetch --all && gh pr list --json number,createdAt,headRefName,author,title,url | jq -r ".[] | [.number, .createdAt, .headRefName, .title, .author.login, .url] | @csv" | sort -r | column -ts $"," | sed "s/\"//g" | fzf | awk "{printf \$3}" | xargs -I_ git checkout _'
alias pr-view='gh pr list --json number,url,createdAt,headRefName,author,title | jq -r ".[] | [.number, .url, .createdAt, .headRefName, .title, .author.login ] | @csv" | sort -r | column -ts $"," | sed "s/\"//g" | fzf | awk "{printf \$2}" | xargs -I_ open "_"'

# Nim
export PATH=/Users/tim/.nimble/bin:$PATH


# bun completions
[ -s "/Users/tim/.bun/_bun" ] && source "/Users/tim/.bun/_bun"

# bun
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"


# Postgres commands build from source
# Running on port 5430
alias clusterdb_src=/usr/local/pgsql/bin/clusterdb
alias createdb_src=/usr/local/pgsql/bin/createdb
alias createuser_src=/usr/local/pgsql/bin/createuser
alias dropdb_src=/usr/local/pgsql/bin/dropdb
alias dropuser_src=/usr/local/pgsql/bin/dropuser
alias ecpg_src=/usr/local/pgsql/bin/ecpg
alias initdb_src=/usr/local/pgsql/bin/initdb
alias pg_amcheck_src=/usr/local/pgsql/bin/pg_amcheck
alias pg_archivecleanup_src=/usr/local/pgsql/bin/pg_archivecleanup
alias pg_basebackup_src=/usr/local/pgsql/bin/pg_basebackup
alias pg_checksums_src=/usr/local/pgsql/bin/pg_checksums
alias pg_config_src=/usr/local/pgsql/bin/pg_config
alias pg_controldata_src=/usr/local/pgsql/bin/pg_controldata
alias pg_ctl_src=/usr/local/pgsql/bin/pg_ctl
alias pg_dump_src=/usr/local/pgsql/bin/pg_dump
alias pg_dumpall_src=/usr/local/pgsql/bin/pg_dumpall
alias pg_isready_src=/usr/local/pgsql/bin/pg_isready
alias pg_receivewal_src=/usr/local/pgsql/bin/pg_receivewal
alias pg_recvlogical_src=/usr/local/pgsql/bin/pg_recvlogical
alias pg_resetwal_src=/usr/local/pgsql/bin/pg_resetwal
alias pg_restore_src=/usr/local/pgsql/bin/pg_restore
alias pg_rewind_src=/usr/local/pgsql/bin/pg_rewind
alias pg_test_fsync_src=/usr/local/pgsql/bin/pg_test_fsync
alias pg_test_timing_src=/usr/local/pgsql/bin/pg_test_timing
alias pg_upgrade_src=/usr/local/pgsql/bin/pg_upgrade
alias pg_verifybackup_src=/usr/local/pgsql/bin/pg_verifybackup
alias pg_waldump_src=/usr/local/pgsql/bin/pg_waldump
alias pgbench_src=/usr/local/pgsql/bin/pgbench
alias postgres_src=/usr/local/pgsql/bin/postgres
alias postmaster_src=/usr/local/pgsql/bin/postmaster
alias psql_src=/usr/local/pgsql/bin/psql
alias reindexdb_src=/usr/local/pgsql/bin/reindexdb
alias vacuumdb_src=/usr/local/pgsql/bin/vacuumdb

