let mapleader="\<SPACE>"

set encoding=utf8 							
set nomodeline								
set nowrap								
set undolevels=100							
set clipboard=unnamed							
set conceallevel=1							
set noerrorbells				
set number relativenumber							
set hlsearch								
set backspace=indent,eol,start      					
set showcmd								
set nocompatible
set cursorline
set noautoindent
set nocindent
set lazyredraw
set laststatus=2
set noshowmode
set termguicolors
set splitright
set smartcase


syntax on
syntax enable
filetype plugin on

" disable mouse support
set mouse=r								

" Space above/beside cursor from screen edges
set scrolloff=1								
set sidescrolloff=5

" set tab width and convert tab to spaces
set tabstop=2	
set softtabstop=2
set shiftwidth=2
set expandtab
set smarttab

" key rebinds
inoremap jk <ESC>

" set relative line numbers only when in normal focused mode
:augroup numbertoggle
:  autocmd!
:  autocmd BufEnter,FocusGained,InsertLeave * set relativenumber
:  autocmd BufLeave,FocusLost,InsertEnter   * set norelativenumber
:augroup END

" automatically enter insert mode when a terminal buffer is selected
:au BufEnter * if &buftype == 'terminal' | :startinsert | endif

" exit from terminal mode
tnoremap jk <C-\><C-n> 

" keep terminal in buffer list
augroup custom_term
    autocmd!
    autocmd TermOpen * setlocal bufhidden=hide
augroup END

" move between buffers more easily
nnoremap <leader>wl <c-w>l
nnoremap <leader>wh <c-w>h
nnoremap <leader>wk <c-w>k
nnoremap <leader>wj <c-w>j

" move between tabs more easily
nnoremap <leader>th :tabprev<CR>
nnoremap <leader>tl :tabnext<CR>

" removes search highlight
"nnoremap <CR> :noh

" indent with tab
nnoremap <Tab> >>
nnoremap <S-Tab> <<
vnoremap <Tab> >
vnoremap <S-Tab> <

" Turn spellcheck on for markdown files
augroup auto_spellcheck
  autocmd BufNewFile,BufRead *.md setlocal spell
augroup END

" add jbuilder syntax highlighting
au BufNewFile,BufRead *.json.jbuilder set ft=ruby
