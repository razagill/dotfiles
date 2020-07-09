# how many lines of history to keep in memory
HISTSIZE=8000

# where to save history on disk
HISTFILE=$HOME/.zsh_history

# number of history entries to save to disk
SAVEHIST=8000

# erase duplicates in the history file
HISTDUP=erase

# append history to the history file (no overwriting)
setopt appendhistory

# share history across terminals
setopt sharehistory

# automatically go inside the directory on cd
setopt autocd
