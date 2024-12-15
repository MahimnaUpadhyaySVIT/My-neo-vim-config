vim.wo.number =  true
vim.wo.relativenumber = true

vim.opt.tabstop = 4
vim.opt.shiftwidth = 4

vim.opt.mouse = 'a'

vim.keymap.set('n', '<leader>e', ':NvimTreeToggle<CR>')

vim.opt.statusline = '%<%{strftime("%H:%M")}%=%F%m%r%h%w'
