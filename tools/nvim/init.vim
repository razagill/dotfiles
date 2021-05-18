call plug#begin('~/.local/share/nvim/plugged')

" general
Plug 'neovim/nvim-lspconfig'
Plug 'hrsh7th/nvim-compe'
Plug 'kabouzeid/nvim-lspinstall'
Plug 'ruanyl/vim-gh-line'
Plug 'junegunn/fzf'
Plug 'junegunn/fzf.vim'
Plug 'tpope/vim-fugitive'
Plug 'vim-test/vim-test'
Plug 'tpope/vim-surround'
Plug 'nvim-lua/plenary.nvim'
Plug 'akinsho/flutter-tools.nvim'
Plug 'kyazdani42/nvim-web-devicons' " for file icons
Plug 'kyazdani42/nvim-tree.lua'
Plug 'hoob3rt/lualine.nvim'
Plug 'akinsho/nvim-bufferline.lua'

" editing
Plug 'andymass/vim-matchup'
Plug 'airblade/vim-gitgutter'
Plug 'windwp/nvim-autopairs'
Plug 'preservim/nerdcommenter'
Plug 'peitalin/vim-jsx-typescript'
Plug 'Glench/Vim-Jinja2-Syntax'
Plug 'justinmk/vim-sneak'
Plug 'leafgarland/typescript-vim'
Plug 'maxmellon/vim-jsx-pretty'
Plug 'junegunn/vim-easy-align'

" themes
"Plug 'srcery-colors/srcery-vim'
"Plug 'morhetz/gruvbox'
"Plug 'bluz71/vim-moonfly-colors'
"Plug 'arcticicestudio/nord-vim'
Plug 'folke/tokyonight.nvim'

call plug#end()


source ~/.dotfiles/tools/nvim/general.vim
source ~/.dotfiles/tools/nvim/plugins.vim
source ~/.dotfiles/tools/nvim/zettel.vim

luafile ~/.dotfiles/tools/nvim/lua/rg-lspinstall/init.lua
luafile ~/.dotfiles/tools/nvim/lua/rg-compe/init.lua
luafile ~/.dotfiles/tools/nvim/lua/rg-flutter-tools/init.lua
luafile ~/.dotfiles/tools/nvim/lua/rg-lualine/init.lua
luafile ~/.dotfiles/tools/nvim/lua/rg-bufferline/init.lua
luafile ~/.dotfiles/tools/nvim/lua/rg-autopairs/init.lua

"luafile ~/.dotfiles/tools/nvim/ruby-ls.lua

" use silent so nvim does not choke if it cannot find the coloscheme
"set background=light
silent! colorscheme tokyonight  
