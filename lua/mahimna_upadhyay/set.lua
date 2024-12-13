vim.wo.number =  true
vim.wo.relativenumber = true

vim.opt.tabstop = 4
vim.opt.shiftwidth = 4

vim.opt.mouse = 'a'

vim.keymap.set('n', '<leader>t', ':tabnew<CR>')
vim.keymap.set('n', '<leader>c', ':tabclose<CR>')
vim.keymap.set('n', '<leader>o', ':tabonly<CR>')

vim.opt.statusline = '%<%{strftime("%H:%M")}%=%F%m%r%h%w'
