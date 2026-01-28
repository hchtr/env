nmap <C-n> :NERDTreeToggle<CR>

" (NumLock ON) to move between splits
nnoremap <k8> <C-w>k
nnoremap <k2> <C-w>j
nnoremap <k4> <C-w>h
nnoremap <k6> <C-w>l

" tab for trigger completion with characters ahead and navigate 
inoremap <silent><expr> <Tab>
      \ coc#pum#visible() ? coc#pum#next(1) :
      \ CheckBackspace() ? "\<Tab>" :
      \ coc#refresh()
inoremap <expr><S-Tab> coc#pum#visible() ? coc#pum#prev(1) : "\<C-h>"
