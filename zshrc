#
# Sets Oh My Zsh options.
#
# Authors:
#   Sorin Ionescu <sorin.ionescu@gmail.com>
#

# Set the key mapping style to 'emacs' or 'vi'.
zstyle ':omz:editor' keymap 'vi'

# Auto convert .... to ../..
zstyle ':omz:editor' dot-expansion 'no'

# Set case-sensitivity for completion, history lookup, etc.
zstyle ':omz:*:*' case-sensitive 'no'

# Color output (auto set to 'no' on dumb terminals).
zstyle ':omz:*:*' color 'yes'

# Auto set the tab and window titles.
zstyle ':omz:terminal' auto-title 'yes'

# Set the plugins to load (see $OMZ/plugins/).
zstyle ':omz:load' plugin 'git'

# Set the prompt theme to load.
# Setting it to 'random' loads a random theme.
# Auto set to 'off' on dumb terminals.
zstyle ':omz:prompt' theme 'sorin'

# This will make you shout: OH MY ZSHELL!
source "$HOME/.oh-my-zsh/init.zsh"

# Customize to your needs...

# Locale
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8

# Dir colors
export LSCOLORS=gxfxbEaEBxxEhEhBaDaCaD

# Homebrew config
export PATH="/usr/local/bin:$PATH"
export MANPATH="/usr/local/share/man:$MANPATH"

# rvenv config
export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"

# Node config
export NODEPATH="/usr/local/lib/node_modules:$NODEPATH"

# Bindings
bindkey '^R' history-incremental-search-backward
bindkey '^A' beginning-of-line
bindkey '^E' end-of-line
bindkey '^U' backward-kill-line
