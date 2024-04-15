#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# [ SOURCE ALIASES FILE ]
if [ -f ~/.bash_aliases ]; then 
    . ~/.bash_aliases
fi

# [ DEFAULT PROMPT SYMBOL ]
PS1='[\u@\h \W]\$ '

# [ DEFAULT PROGRAMS ]
export TERM=alacritty
export EDITOR=nvim
export LAUNCHER=$HOME/.config/rofi/launchers/type-2/launcher.sh

# [ ASDF ]
. "$HOME/.asdf/asdf.sh"
. "$HOME/.asdf/completions/asdf.bash"

# [ NVM ]
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# [ BUN ]
export BUN_INSTALL="$HOME/.bun"
export PATH=$BUN_INSTALL/bin:$PATH

# [ STARTSHIP ]
eval "$(starship init bash)"

# pnpm
export PNPM_HOME="/home/jmfariasdev/.local/share/pnpm"
case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *) export PATH="$PNPM_HOME:$PATH" ;;
esac
# pnpm end
