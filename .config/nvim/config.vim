""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Advanced Neovim Configuration
""""""""""""""""""""""""""""""""""""""""""""""""""""""""
colorscheme dracula

" NERDTree
""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:NERDTreeDirArrowExpandable = '+'
let g:NERDTreeDirArrowCollapsible = '-'

" open NERDTree when vim start
autocmd VimEnter * NERDTree

" close vim when NERDTree is the last window
autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif

" Open the existing NERDTree on each new tab.
autocmd BufWinEnter * silent NERDTreeMirror

" NERDTree shortcut
map <C-n> :NERDTreeFocus<CR>
map <C-B> :NERDTreeToggle<CR>


