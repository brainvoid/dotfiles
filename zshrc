# brainvoids zshrc - 2014

export DOTFILES=$HOME/.dotfiles
export ZSH=$DOTFILES/oh-my-zsh

# Theme
ZSH_THEME="robbyrussell"

plugins=(git rails cp django copyfile copydir git git-extras tmux sudo sublime rsync python pip perl nyan lol)

source $ZSH/oh-my-zsh.sh


source $DOTFILES/term_alias
source $DOTFILES/term_export
setopt NO_BEEP
