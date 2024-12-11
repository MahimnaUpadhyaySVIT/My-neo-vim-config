local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>sf', builtin.find_files, { desc = 'Telescope find files' })
vim.keymap.set('n', '<C-p>', builtin.git_files, { desc = 'Telescope find github files' })
vim.keymap.set('n', '<leader>s' , function()
	builtin.greap_string({
			search= vim.fn.input("Search > ")
		})
end)
