call plug#begin('~/.local/share/nvim/plugged')

" general
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'itchyny/lightline.vim'
Plug 'ruanyl/vim-gh-line'
Plug 'preservim/nerdtree'
Plug 'junegunn/fzf'
Plug 'junegunn/fzf.vim'
Plug 'tpope/vim-fugitive'
Plug 'SidOfc/mkdx'
"Plug 'voldikss/vim-floaterm'

" editing
Plug 'andymass/vim-matchup'
Plug 'airblade/vim-gitgutter'
Plug 'jiangmiao/auto-pairs'
Plug 'preservim/nerdcommenter'
Plug 'peitalin/vim-jsx-typescript'
"Plug 'justinmk/vim-sneak'
"Plug 'elixir-editors/vim-elixir'
"Plug 'sheerun/vim-polyglot'
"Plug 'jez/vim-better-sml'
"Plug 'sbdchd/neoformat'
Plug 'leafgarland/typescript-vim'
Plug 'maxmellon/vim-jsx-pretty'
Plug 'junegunn/vim-easy-align'

" themes
Plug 'srcery-colors/srcery-vim'

call plug#end()


source ~/.dotfiles/tools/nvim/general.vim
source ~/.dotfiles/tools/nvim/plugins.vim
source ~/.dotfiles/tools/nvim/zettel.vim

" use silent so nvim does not choke if it cannot find the coloscheme
silent! colorscheme srcery
