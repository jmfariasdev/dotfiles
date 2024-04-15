# 2024 jmfariasdev (João Marcos Farias)
# §§=> Bash <=§§ aliases file.

alias grep='grep --color=auto'

# [ Personal Aliases ]
alias del='rm -rf'
alias md='mkdir'
alias mf='touch'
alias ledon='xset led on'
alias ledoff='xset led off'

# [ EZA ]

alias ls='eza -G --color=always --group-directories-first --icons' # preferred listing
alias la='eza -aG --color=always --group-directories-first --icons'  # all files and dirs
alias ll='eza -l --color=always --group-directories-first --icons'  # long format
alias lt='eza -Ta --color=always --group-directories-first --icons --ignore-glob="node_modules|.git"' # tree listing
alias l.='eza -ald --color=always --group-directories-first --icons .*' # show only dotfiles
