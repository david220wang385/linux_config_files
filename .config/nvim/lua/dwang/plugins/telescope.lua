local telescope_setup, telescope = pcall(require, "telescope")
if not telescope_setup then
   return
end

local actions_setup, actions = pcall(require, "telescope.actions")
if not actions_setup then
   return
end

local builtin_setup, builtin = pcall(require, "telescope.builtin")
if not builtin_setup then
   return
end

telescope.setup({
   defaults = {
      mappings = {
         i = {
            ["<C-k>"] = actions.move_selection_previous,
            ["<C-j>"] = actions.move_selection_next,
            ["<C-q>"] = actions.send_selected_to_qflist + actions.open_qflist,
         }
      }
   }
})

vim.keymap.set('n', '<leader>pf', builtin.find_files, {})
vim.keymap.set('n', '<C-p>', builtin.git_files, {})
vim.keymap.set('n', '<leader>ps', function()
	builtin.grep_string({ search = vim.fn.input("Grep > ") });
end)

telescope.load_extension("fzf")
