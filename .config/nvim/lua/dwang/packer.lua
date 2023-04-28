-- Bootstrapping packer.nvim
local ensure_packer = function()
  local fn = vim.fn
  local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
  if fn.empty(fn.glob(install_path)) > 0 then
    fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
    vim.cmd [[packadd packer.nvim]]
    return true
  end
  return false
end
local packer_bootstrap = ensure_packer()

-- Hot-reload packer whenever this file is saved
vim.cmd([[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost packer.lua source <afile> | PackerSync
  augroup end
]])

local status, packer = pcall(require, "packer")
if not status then
   print("Packer require failed!")
   return
end

return packer.startup(function(use)

   -- Packer can manage itself
   use 'wbthomason/packer.nvim'

   -- Library of Lua modules many plugins use
   use ("nvim-lua/plenary.nvim")
   
   -- Colorscheme setup
   use { "bluz71/vim-nightfly-colors", as = "nightfly" }
   
   -- tmux & split window navigation 
   use ("christoomey/vim-tmux-navigator")

   -- Maximize and restore current window
   use ("szw/vim-maximizer")

   -- Essentials
   use ("tpope/vim-surround")

   -- Comment with gcc and gc
   use ("numToStr/Comment.nvim")

   -- File explorer
   use ("nvim-tree/nvim-tree.lua")

   -- VSCode-like icons
   use ("kyazdani42/nvim-web-devicons")

   -- Statusline
   use ("nvim-lualine/lualine.nvim")

   -- Telescope (fuzzy finder)
   use {
      'nvim-telescope/telescope.nvim', tag = '0.1.1',
      requires = { {'nvim-lua/plenary.nvim'} }
   }

   -- Native telescope sorter that improves sorting performance
   use({ "nvim-telescope/telescope-fzf-native.nvim", run = "make" })


   if packer_bootstrap then
      require("packer").sync()
   end
end)
