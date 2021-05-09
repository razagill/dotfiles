" ======== nvim-tree
" ========
nnoremap <C-n> :NvimTreeToggle<CR>
nnoremap <leader>r :NvimTreeRefresh<CR>

" ======== fzf
" ============
nnoremap <leader>p :Files<CR>
nnoremap <leader>b :Buffers<CR>
nnoremap <leader>se :Rg<CR>
nnoremap <leader>su :Rg <C-R><C-W><CR>

" ======== vim-sneak
" ==================
let g:sneak#label = 1

" ======== nerdcommenter
" ======================
let g:NERDCompactSexyComs = 1

" ======== theme-options
" ===============
let g:tokyonight_style = "night"
"let g:srcery_transparent_background = 1

" ======== vim-markdown
" =====================
let g:vim_markdown_folding_disabled = 1

" ======== vim-better-sml
" =======================
" close the REPL (mnemonic: k -> kill)
au FileType sml nnoremap <silent> <buffer> <leader>ik :SMLReplStop<CR>
" use the current file into the REPL (even if using CM)
au FileType sml nnoremap <silent> <buffer> <leader>iu :SMLReplUse<CR>

" set excplicit pythoon executable path for pynvim
let g:python3_host_prog = '/usr/local/bin/python3'

" ======= mkdx
" ============
let g:mkdx#settings = { 'highlight': { 'enable': 1 },
                      \ 'enter': { 'shift': 1 },
                      \ 'links': { 'external': { 'enable': 1 } },
                      \ 'toc': { 'text': 'Table of Contents', 'update_on_write': 1 },
                      \ 'fold': { 'enable': 1 } }

" ======== vim-easy-plugin
" ========================
" Start interactive EasyAlign in visual mode (e.g. vipga)
xmap ga <Plug>(EasyAlign)

" Start interactive EasyAlign for a motion/text object (e.g. gaip)
nmap ga <Plug>(EasyAlign)

" vim-pencil change default line wrap mode
let g:pencil#wrapModeDefault = 'soft' 

" ======= ci_dark
" ===============
set fillchars+=vert:│


" ======= vim-test
" ===============
"let test#strategy = "floaterm"
nmap <silent> t<C-n> :TestNearest<CR>
nmap <silent> t<C-f> :TestFile<CR>
nmap <silent> t<C-s> :TestSuite<CR>
nmap <silent> t<C-l> :TestLast<CR>
nmap <silent> t<C-g> :TestVisit<CR>

" ======= vim-fugitive
" ===============
nmap <leader>gs :G<CR>
nmap <leader>gh :diffget //3<CR>
nmap <leader>gu :diffget //2<CR>
