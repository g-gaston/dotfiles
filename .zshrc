if [[ "$ZPROF" = true ]]; then
  zmodload zsh/zprof
fi

export HISTFILE="$HOME/.zhistory"

# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block, everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# Source Prezto.
source "${ZDOTDIR:-$HOME}/.zprezto/runcoms/zshrc"

eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"

source "${HOME}/.aliases"
source "${HOME}/.functions"

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

[[ ! -f ~/.zshrc_local ]] || source ~/.zshrc_local

if [[ "$ZPROF" = true ]]; then
  zprof
fi

export BAT_THEME=Nord

[ -s "${HOME}/.g/env" ] && \. "${HOME}/.g/env"  # g shell setup

