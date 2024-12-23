 -- Load cached configuration for Git
dofile(vim.g.base46_cache .. "git")

-- Return Git signs configuration
return {
  signs = {
    delete = { text = "󰍵" },
    changedelete = { text = "󱕖" },
  },
}
