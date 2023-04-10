local status, _ = pcall(vim.cmd, "colorscheme nightfly")
if not status then
   print("ERROR: Colorscheme not installed")
   return
end
