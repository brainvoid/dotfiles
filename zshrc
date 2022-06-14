export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="minimal"
plugins=( 
    git
    zsh-autosuggestions
    zsh-syntax-highlighting
)
source $ZSH/oh-my-zsh.sh

source $HOME/.dotfiles/term_alias

export PATH="/opt/homebrew/opt/php@7.4/bin:$PATH"
export PATH="/opt/homebrew/opt/php@7.4/sbin:$PATH"
