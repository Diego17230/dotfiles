let b:ale_linters = ['flake8', 'pyflakes']
" Fix Python files with autopep8 and yapf.
let b:ale_fixers = ['autopep8', 'yapf']

setlocal shiftwidth=4
setlocal softtabstop=4
setlocal colorcolumn=79

let b:callcmd='py ' . @%

" Correct some spelling
iabbrev slef self
iabbrev sefl self

" Puts pprint at the top of the file
command! Pprint normal mpggOfrom pprint import pprintjk`pdmp
" Deletes first line in a file
command! Dprint normal mpggdd`pdmp
