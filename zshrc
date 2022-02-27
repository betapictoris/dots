# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

xrdb merge $HOME/.xresources
source ~/powerlevel10k/powerlevel10k.zsh-theme

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# Set sudo prompt
export SUDO_PROMPT=" Password: "

# Aliases
alias ls="exa -l"
alias cat="bat -p"
alias vim="nvim"
alias cpufetch="cpufetch --logo-intel-new"
alias top="htop"

alias rm="rm -rv"
alias mv="mv -v"
alias mkdir="mkdir -pv"

alias l="ls"
alias c="clear"
alias d="rm"
alias m="mv"
alias n="mkdir"
alias x="exit"

alias ..="cd .."

alias battery='upower -i $(upower -e | grep BAT) | grep --color=never -E "state|to\ full|to\ empty|percentage"'
alias seashell="nc seashells.io 1337"
alias chat-libera="catgirl -h irc.libera.chat -n beta_"
alias pmc="python3 -m portablemc"

alias load-jabba='[ -s "/home/beta/.jabba/jabba.sh" ] && source "/home/beta/.jabba/jabba.sh"'

# Add spicetify to path
export PATH="$PATH:$HOME/.spicetify"
