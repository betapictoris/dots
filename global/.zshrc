# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

source ~/powerlevel10k/powerlevel10k.zsh-theme

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# Exports
export SUDO_PROMPT=" Password: "

# Aliases
alias ls="exa -la"
alias cat="bat -p"

alias vim="nvim"
alias code="nvim"

alias mkdir="mkdir -pv"
alias cp="cp -rv"
alias mv="mv -v"
alias rm="rm -rv"

alias x="exit"

export PATH=$PATH:/home/beta/.spicetify
