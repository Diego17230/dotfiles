" -emmet-vim-
let g:user_emmet_install_global = 0
autocmd BufRead,BufNewFile *.htm,*.html,*.css EmmetInstall


" -vim-go-
let g:go_fmt_command = 'goimports'
let g:go_doc_keywordprg_enabled = 0
let g:go_auto_type_info = 1
let g:go_metalinter_autosave = 1
let g:go_debug_windows = {
      \ 'vars':       'leftabove 30vnew',
      \ 'stack':      'leftabove 15new',
      \ 'out':        'botright 5new',
      \ }
let g:go_debug_mappings = {
      \ '(go-debug-continue)':   {'key': 'N'},
      \ '(go-debug-print)':      {'key': 'p'},
      \ '(go-debug-breakpoint)': {'key': 'b'},
      \ '(go-debug-next)':       {'key': 'n'},
      \ '(go-debug-step)':       {'key': 's'},
      \ '(go-debug-stepout)':    {'key': 'S'},
      \ }
let g:go_debug_log_output = ''


" -clever-f-
let g:clever_f_across_no_line = 1
let g:clever_f_mark_direct = 1


" -copilot.nvim-
let g:copilot_filetypes = {'go': v:false}


" -vim-easyclip-
let g:EasyClipAutoFormat = 1


" -pymode-
let g:pymode_rope_goto_definition_bind = 'gd'
let g:pymode_lint_ignore = ["E501"]
let g:pymode_doc_bind = '<C-p>'
let g:pymode_run_bind = '<leader>r'


" -supertab-
let g:SuperTabDefaultCompletionType = 'context'


" -fzf-
let g:fzf_action = {
      \ 'ctrl-t': 'tab split',
      \ 'ctrl-o': 'tab split',
      \ 'ctrl-x': 'split',
      \ 'ctrl-v': 'vsplit' }


"-vim-fugitive-
" Open pager with these mappings
autocmd User FugitivePager
      \ nnoremap <buffer> <s-j> zj |
      \ nnoremap <buffer> <s-k> <Plug>FoldJumpUp |
      \ nnoremap <buffer> q ZZ |
      \ nnoremap <buffer> <s-CR> <C-6>
" Activated when :G buffer is entered
autocmd User FugitiveIndex
      \ nnoremap <silent> <s-s> :Git add --all<CR> |
      \ nnoremap <silent> <leader>p :Git push<CR>


" -cinnamon.nvim-
lua require('cinnamon').setup()


" -tokyonight.nvim-
let g:tokyonight_style = 'night'


" -nerdtree-
" Exit Vim if NERDTree is the only window remaining in the only tab.
autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif
