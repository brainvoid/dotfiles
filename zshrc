# brainvoids zshrc - 2014

export DOTFILES=$HOME/.dotfiles
export ZSH=$DOTFILES/oh-my-zsh

# Theme
ZSH_THEME="eastwood"

plugins=(common-aliases brew cp copyfile copydir gitfast git-extras tmux sudo rsync python pip nyan)

source $ZSH/oh-my-zsh.sh


source $DOTFILES/term_alias
source $DOTFILES/term_export
setopt NO_BEEP
