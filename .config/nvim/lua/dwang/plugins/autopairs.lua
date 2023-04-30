local autopairs_setup, autopairs = pcall(require, "nvim-autopairs")
if not autopairs_setup then
   return
end

autopairs.setup({
   check_ts = true, -- enable treesitter
   ts_config = {
      lua = { "string" }, -- Don't add pairs in lua string treesitter nodes
      javascript = { "template_string" }, -- Don't add pairs in JS template_string nodes
      java = false, -- Don't check treesitter for Java
   },
})

local cmp_autopairs_setup, cmp_autopairs = pcall(require, "nvim-autopairs.completion.cmp")
if not cmp_autopairs_setup then
   return
end

local cmp_setup, cmp = pcall(require, "cmp")
if not cmp_setup then
   return
end
