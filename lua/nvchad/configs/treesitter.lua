pcall(function()
  dofile(vim.g.base46_cache .. "syntax")
  dofile(vim.g.base46_cache .. "treesitter")
end)

return {
  ensure_installed = { "lua", "luadoc", "printf", "vim", "vimdoc" },

  auto_install = true,
  
  highlight = {
    enable = true,
    use_languagetree = true,
  },

  indent = { enable = true },
}
