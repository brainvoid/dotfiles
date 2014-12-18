# brainvoids zshrc - 2014 
# - options
setopt NO_BEEP
# - exports
export PATH="/usr/lib/lightdm/lightdm:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/home/bvd/scripts"
export EDITOR='vim'

# - antigen
source ~/.dotfiles/antigen.zsh

# Load the oh-my-zsh's library.
antigen use oh-my-zsh

# Bundles from the default repo (robbyrussell's oh-my-zsh).
antigen bundle git
antigen bundle heroku
antigen bundle pip
antigen bundle lein
antigen bundle command-not-found
antigen bundle python
antigen bundle ruby

# Syntax highlighting bundle.
antigen bundle zsh-users/zsh-syntax-highlighting

# Load the theme.
antigen theme kolo
# fuck you bundle

antigen bundle dmiedema/fuck-you

# Tell antigen that you're done.
antigen apply
# - aliases
alias zshconfig="mate ~/.zshrc"
alias ohmyzsh="mate ~/.oh-my-zsh"
alias ta="tmux attach-session -t"
alias hoooo='sudo $(fc -ln -1)'
