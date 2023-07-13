
EDITOR=vi

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
alias prs='git fetch --all && gh pr list --json number,createdAt,headRefName,author,title,url | jq -r ".[] | [.number, .createdAt, .headRefName, .title, .author.login, .url] | @csv" | sort -r | column -ts $"," | sed "s/\"//g" | fzf | awk "{printf \$3}" | xargs -I_ git checkout _'

