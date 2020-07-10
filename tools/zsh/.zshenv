export LC_ALL=en_US.UTF-8
export XDG_HOME_CONFIG=$HOME/.config
export EDITOR=nvim

export FZF_DEFAULT_OPTS="--height=60% --preview-window=right:60%:wrap"
export FZF_DEFAULT_COMMAND='rg --files --hidden --follow'
export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"
export FZF_ALT_C_COMMAND="fd --type d . --color=never"
export FZF_CTRL_T_OPTS="--preview 'bat --color=always --line-range :500 {}'"
export FZF_ALT_C_OPTS="--preview 'tree -C {} | head -100'"

fpath=(
  $HOME/.dotfiles/tools/zsh/functions
  $fpath 
)

typeset -U fpath

# keep the path unique
typeset -aU path 
