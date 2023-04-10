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
    autocmd BufWritePost packer.lua source <afile> | PackerCompile
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
   
   -- Colorscheme setup
   use { "bluz71/vim-nightfly-colors", as = "nightfly" }
   
   -- tmux & split window navigation 
   use ("christoomey/vim-tmux-navigator")

   -- Maximize and restore current window
   use ("szw/vim-maximizer")

   if packer_bootstrap then
      require("packer").sync()
   end
end)
