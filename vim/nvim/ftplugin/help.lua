local bufnoremap = require('util').bufnoremap


bufnoremap('n', '<CR>',      '<C-]>')
bufnoremap('n', '<BS>',      '<C-T>')
bufnoremap('n', '<leader>t', '<Cmd>setlocal filetype=text<CR>')
