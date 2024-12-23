# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

ZINIT_HOME="${XDG_DATA_HOME:-${HOME}/.local/share}/zinit/zinit.git"
[ ! -d $ZINIT_HOME ] && mkdir -p "$(dirname $ZINIT_HOME)"
[ ! -d $ZINIT_HOME/.git ] && git clone https://github.com/zdharma-continuum/zinit.git "$ZINIT_HOME"
source "${ZINIT_HOME}/zinit.zsh"

zinit ice depth=1; zinit light romkatv/powerlevel10k 

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

#syntax highlighting
zinit light zsh-users/zsh-syntax-highlighting
#completions for cmdline tools 
zinit light zsh-users/zsh-completions
autoload -U compinit && compinit
#autosugestions based on history
zinit light zsh-users/zsh-autosuggestions

alias obsidian="~/appimages/Obsidian-1.6.7.AppImage & disown" 
alias kdrive="~/appimages/kDrive-3.6.6.20241001-amd64.AppImage & disown"
alias z="~/appimages/zellij"
alias n=nvim
alias bu= ddcutil setvcp 10 + 10
alias bd= ddcutil setvcp 10 - 10
# add variables to path
export PATH=$PATH:~/.local/bin
export GTK_THEME='Pop-dark'

# Import colorscheme from 'wal' asynchronously
# &   # Run the process in the background.
# ( ) # Hide shell job control messages.
# Not supported in the "fish" shell.
(cat ~/.cache/wal/sequences &)

# To add support for TTYs this line can be optionally added.
source ~/.cache/wal/colors-tty.sh
