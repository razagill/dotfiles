" ======== coc
" ============
" use tab for trigger completion with characters ahead and navigate.
" use command ':verbose imap <tab>' to make sure tab is not mapped by other plugin.
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction
" use <c-space> to trigger completion.
inoremap <silent><expr> <c-space> coc#refresh()
" remap keys for gotos
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)
" use K to show documentation in preview window
nnoremap <silent> K :call <SID>show_documentation()<CR>

function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  else
    call CocAction('doHover')
  endif
endfunction
" highlight symbol under cursor on CursorHold
autocmd CursorHold * silent call CocActionAsync('highlight')

" Remap for rename current word
nmap <leader>rn <Plug>(coc-rename)

augroup mygroup
  autocmd!
  " Setup formatexpr specified filetype(s).
  autocmd FileType typescript,json setl formatexpr=CocAction('formatSelected')
  " Update signature help on jump placeholder
  autocmd User CocJumpPlaceholder call CocActionAsync('showSignatureHelp')
augroup end
" remap for do codeAction of current line
nmap <leader>ac  <Plug>(coc-codeaction)
" fix autofix problem of current line
nmap <leader>qf  <Plug>(coc-fix-current)
" create mappings for function text object, requires document symbols feature of languageserver.
xmap if <Plug>(coc-funcobj-i)
xmap af <Plug>(coc-funcobj-a)
omap if <Plug>(coc-funcobj-i)
omap af <Plug>(coc-funcobj-a)

" use <C-d> for select selections ranges, needs server support, like: coc-tsserver, coc-python
nmap <silent> <C-d> <Plug>(coc-range-select)
xmap <silent> <C-d> <Plug>(coc-range-select)

" use `:Format` to format current buffer
command! -nargs=0 Format :call CocAction('format')

" use `:Fold` to fold current buffer
" command! -nargs=? Fold :call     CocAction('fold', <f-args>)

" use `:OR` for organize import of current buffer
command! -nargs=0 OR   :call     CocAction('runCommand', 'editor.action.organizeImport')

" ======== fzf
" ============
nnoremap <leader>p :Files<CR>
nnoremap <leader>b :Buffers<CR>
nnoremap <leader>se :Rg<CR>
nnoremap <leader>su :Rg <C-R><C-W><CR>

" ======== nerdtree
" =================
map <C-n> :NERDTreeToggle<CR>
map <C-N> :NERDTreeFind<CR>
let NERDTreeShowHidden=1 " always show hidden (dot) files
let NERDTreeQuitOnOpen=1 " close NERDTree once a file is opened
let NERDTreeMinimalUI=1  " hides the help text

" ======== vim-sneak
" ==================
let g:sneak#label = 1

" ======== nerdcommenter
" ======================
let g:NERDCompactSexyComs = 1

" ======== lightline
" ==================
let g:lightline = {
  \ 'colorscheme': 'srcery',
  \ 'active': {
  \   'right': [ [ 'lineinfo' ],
  \              [ 'fileformat', 'fileencoding', 'filetype', 'gitbranch' ] ]
  \ },
  \ 'component_function': {
  \   'filename': 'LightlineFilename',
  \   'gitbranch': 'FugitiveHead'
  \ },
  \ }

function! LightlineFilename()
  let root = fnamemodify(get(b:, 'git_dir'), ':h')
  let path = expand('%:p')
  if path[:len(root)-1] ==# root
    return path[len(root)+1:]
  endif
  return expand('%')
endfunction

" ======== srcery
" ===============
let g:srcery_transparent_background = 1

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
