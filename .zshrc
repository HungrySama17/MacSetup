export CLICOLOR=1
PS1="%F{green}%m%f [%F{blue}%d%f]> "

alias tattach='tmux -CC a -t'
alias fprev='fzf --preview "bat --color=always {}"'
alias resetWifi='networksetup -setairportpower en0 off; sleep 1; sudo route flush; networksetup -setairportpower en0 on'
export PATH=$PATH:/opt/homebrew/Cellar/openvpn/2.6.4/sbin
export PATH=/opt/homebrew/bin:/opt/homebrew/sbin:/usr/local/bin:/System/Cryptexes/App/usr/bin:/usr/bin:/bin:/usr/sbin:/sbin:/var/run/com.apple.security.cryptexd/codex.system/bootstrap/usr/local/bin:/var/run/com.apple.security.cryptexd/codex.system/bootstrap/usr/bin:/var/run/com.apple.security.cryptexd/codex.system/bootstrap/usr/appleinternal/bin:/opt/homebrew/Cellar/openvpn/2.6.4/sbin:/Users/udaysama/Library/Python/3.10/bin:/Users/udaysama/go/bin

# Load zsh's completion system "compsys"
autoload -Uz compinit
compinit

# Colorize completions using default `ls` colors.
# LSCOLORS=exfxcxdxbxegedabagacad
# export LSCOLORS
# ZSH doesnt know what LSCOLORS is, CLICOLOR=1 uses the defualt which is above, the below sets the colors for tab completion
export LS_COLORS="di=34:ln=35:so=32:pi=33:ex=31:bd=34;46:cd=34;43:su=30;41:sg=30;46:tw=30;42:ow=30;43"
zstyle ':completion:*' list-colors ${(s.:.)LS_COLORS}

# Created by `pipx` on 2023-10-17 15:21:11
export PATH="$PATH:/Users/udaysama/.local/bin"

# Gets fuzzy finder
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# Fuzzy tab completion
source /Users/udaysama/Downloads/fzf-tab/fzf-tab.plugin.zsh

# Sets the history settings so less stuff gets stored in history
HISTORY_IGNORE="(bat*|echo*|ls*|history*|cd*|pwd|vim*|code*|head*|tail*|bragi*|open*)"
HISTSIZE=100000000
SAVEHIST=100000000
setopt INC_APPEND_HISTORY    # Write to the history file immediately, not when the shell exits.
setopt HIST_IGNORE_DUPS      # Do not record an event that was just recorded again.
setopt HIST_IGNORE_ALL_DUPS  # Delete an old recorded event if a new event is a duplicate.
setopt HIST_SAVE_NO_DUPS     # Do not write a duplicate event to the history file.
setopt HIST_REDUCE_BLANKS    # Remove superfluous blanks from each command line being added to the history.
setopt SHARE_HISTORY         # Share history between all sessions.

# Makes man page colored
export PAGER='most'

# Sets vi to be used to navigate terminal
# set -o vi

# Gets syntax highlighting for the terminal
# https://github.com/zsh-users/zsh-syntax-highlighting/tree/master
source /Users/udaysama/MacSetup/github/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
ZSH_HIGHLIGHT_STYLES[single-hyphen-option]=fg=cyan
ZSH_HIGHLIGHT_STYLES[double-hyphen-option]=fg=cyan
ZSH_HIGHLIGHT_STYLES[unknown-token]=fg=white

# Sets up startship for prompt
# eval "$(starship init zsh)"

