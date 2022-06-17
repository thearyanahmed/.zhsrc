plugins=(
     git
      dotenv
      aws
      brew
      cargo
      docker
      golang
      rust
      zsh-autocomplete
      history-substring-search
  )
# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# export PATH=$HOME/bin:/usr/local/bin:$PATH

export ZSH="/Users/thearyanahmed/.oh-my-zsh"

ZSH_THEME="powerlevel10k/powerlevel10k"
source ~/powerlevel10k/powerlevel10k.zsh-theme

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

POWERLEVEL9K_INSTANT_PROMPT=off
export GOPATH=$HOME/awesomego
export GOROOT=/usr/local/go
export GOBIN=$GOPATH/bin

#export PATH=$PATH:$GOPATH/bin
#export PATH=$PATH:/usr/local/go/bin

export PATH="$PATH:$HOME/.composer/vendor/bin"
export PATH="$PATH:$GOPATH/bin"

export PATH="/opt/homebrew/opt/openjdk/bin:$PATH"

# alias

alias gts="go test -v . | sed ''/PASS/s//$(printf "\033[32mPASS\033[0m")/'' | sed ''/FAIL/s//$(printf "\033[31mFAIL\033[0m")/''"

alias art="php artisan"
alias migrate="php artisan migrate"
alias cc="php artisan config:clear"

alias gs="git status"
alias commit="git add .; git commit -m"
alias gp="git push"
alias gb="git push --set-upstream origin $(git branch | head -n1 | awk '{print $2;}')"
alias ::="git add .; git commit -m"
alias gcx="git checkout -"
alias :tin="php artisan tinker"
alias :wip="git add .; git commit -m 'wip $(date)'"

alias smysql="brew services start mysql"
alias stmysql="brew services stop mysql"

alias zk:s="bin/zookeeper-server-start.sh config/zookeeper.properties"
alias kafka:s="bin/kafka-server-start.sh config/server.properties"

alias p3="python3"

alias !t="touch"

#docker stuff

alias doc:="docker"
alias dc:="docker compose"

alias dc:u="dc up"
alias dc:d="dc down"
alias dc:r="dc restart"
alias dc:ub="dc up --build"
alias dc:rm:ca="docker container rm $(docker container ls -aq)"

alias systemshutdown="valet stop; stmysql;"


alias :atp="art test --parallel"
alias :r="cargo run"
alias :rt="cargo test"
#sail
alias sail='[ -f sail ] && bash sail || bash vendor/bin/sail'

# solana
export PATH="/Users/thearyanahmed/.local/share/solana/install/active_release/bin:$PATH"


# functions
function git_img_url {
    echo "https://raw.githubusercontent.com/thearyanahmed/blog-articles/master/$1";
}


con_pg() {
   psql -h localhost -p 5432 -U $1 $2 -W;
}

_clwrk() {
	con_pg rusty clockwork_dev;
}

b64() {
    echo -n $1 | base64 | pbcopy
}

_new() {

   mkdir $1 && cd $_

}
alias gif="git diff"
alias ..="cd ../"
alias :stv="solana-test-validator"


alias shr="source ~/.zshrc"
# benchworks


source /opt/homebrew/share/zsh-autosuggestions/zsh-autosuggestions.zsh
