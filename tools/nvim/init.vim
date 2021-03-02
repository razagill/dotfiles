call plug#begin('~/.local/share/nvim/plugged')

" general
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'itchyny/lightline.vim'
Plug 'ruanyl/vim-gh-line'
Plug 'preservim/nerdtree'
Plug 'junegunn/fzf'
Plug 'junegunn/fzf.vim'
Plug 'tpope/vim-fugitive'
Plug 'vim-test/vim-test'

" editing
Plug 'andymass/vim-matchup'
Plug 'airblade/vim-gitgutter'
Plug 'jiangmiao/auto-pairs'
Plug 'preservim/nerdcommenter'
Plug 'peitalin/vim-jsx-typescript'
Plug 'Glench/Vim-Jinja2-Syntax'
Plug 'justinmk/vim-sneak'
Plug 'leafgarland/typescript-vim'
Plug 'maxmellon/vim-jsx-pretty'
Plug 'junegunn/vim-easy-align'

" themes
Plug 'srcery-colors/srcery-vim'
Plug 'morhetz/gruvbox'
Plug 'bluz71/vim-moonfly-colors'
Plug 'NLKNguyen/papercolor-theme'
Plug 'arcticicestudio/nord-vim'

call plug#end()


source ~/.dotfiles/tools/nvim/general.vim
source ~/.dotfiles/tools/nvim/plugins.vim
source ~/.dotfiles/tools/nvim/zettel.vim

" use silent so nvim does not choke if it cannot find the coloscheme
"set background=light
silent! colorscheme nord
