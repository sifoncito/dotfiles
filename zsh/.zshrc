# ENVs
export ZSH="$HOME/.oh-my-zsh"
export EDITOR=vim

ZSH_THEME="minimal"

plugins=(aws git terraform)

source $ZSH/oh-my-zsh.sh

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
