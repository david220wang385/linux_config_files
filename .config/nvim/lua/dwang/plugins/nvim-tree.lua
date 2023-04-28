local setup, nvimtree = pcall(require, "nvim-tree")
if not setup then
   return
end

-- Recommended settings from nvim-tree documentation
vim.g.loaded = 1
vim.g.loaded_netrwPlugin = 1

-- Make arrows blue
vim.cmd([[ highlight NvimTreeIndentMarker guifg=#3fc5ff ]])

nvimtree.setup({
   actions = {
      open_file = {
         window_picker = {
            enable = false,
         },
      },
   },
})
