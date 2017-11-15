 export GOPATH=$HOME/go
 #export GOROOT=/usr/local/bin/go
 export PATH=$HOME/bin:/usr/local/bin:$PATH:/usr/local/bin/go/bin:$HOME/.config/composer/vendor/bin:$GOPATH/bin

# Path to your oh-my-zsh installation.
export ZSH=~/.oh-my-zsh

POWERLEVEL9K_MODE='nerdfonts'
ZSH_THEME="powerlevel9k/powerlevel9k"

ENABLE_CORRECTION="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

plugins=(git z docker)

source $ZSH/oh-my-zsh.sh

export EDITOR="nvim"

# ssh
export SSH_KEY_PATH="~/.ssh/rsa_id"


# Aliases
# random generates a random string.../dev/urandom is considered secure though ..
# Cannot remember the usecase i had for this though
alias random="< /dev/urandom tr -dc A-Za-z0-9 | head -c47; echo"
alias ctag="gotags -tag-relative=true -R=true -sort=true -f="tags" -fields=+l ."

if type nvim > /dev/null 2>&1; then
  alias vim="nvim"
fi

# Some other useful plugins
source $HOME/.zsh/bd/bd.zsh

## Simulate the awesome highlighting and autocompletion of fish shell
source $HOME/.zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source $HOME/.zsh/zsh-autosuggestions/zsh-autosuggestions.plugin.zsh

source ~/.secrets

## Open Neovim in a cinch.
## If a path is given (as in `v path`), it opens the given path. Path can be a file or directory.
## If none is given (as in `v`), it opens up the current directory.
v()
{
	local toOpen=$1

	if [[ ${#toOpen} -eq 0  ]]; then
		toOpen="./"
	fi

	nvim $toOpen
}
