call plug#begin('~/.local/share/nvim/plugged')

" general
"Plug 'neoclide/coc.nvim', {'branch': 'release'}
"Plug 'itchyny/lightline.vim'
"Plug 'ruanyl/vim-gh-line'
"Plug 'preservim/nerdtree'
"Plug 'junegunn/fzf'
"Plug 'junegunn/fzf.vim'
"Plug 'tpope/vim-fugitive'
"Plug 'andymass/vim-matchup'
"Plug 'plasticboy/vim-markdown'
"Plug 'voldikss/vim-floaterm'

" editing
"Plug 'airblade/vim-gitgutter'
"Plug 'jiangmiao/auto-pairs'
"Plug 'preservim/nerdcommenter'
"Plug 'justinmk/vim-sneak'
"Plug 'elixir-editors/vim-elixir'
"Plug 'sheerun/vim-polyglot'
"Plug 'jez/vim-better-sml'
"Plug 'sbdchd/neoformat'

" typescript
"Plug 'HerringtonDarkholme/yats.vim'
"Plug 'maxmellon/vim-jsx-pretty'

" themes
Plug 'srcery-colors/srcery-vim'

call plug#end()


source ~/.dotfiles/tools/nvim/general.vim
source ~/.dotfiles/tools/nvim/plugins.vim
source ~/.dotfiles/tools/nvim/zettel.vim

colorscheme srcery
