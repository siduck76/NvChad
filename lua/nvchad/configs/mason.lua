 -- Load cached configuration for Mason
dofile(vim.g.base46_cache .. "mason")

-- Return Mason configuration
return {
  PATH = "skip",

  ui = {
    icons = {
      package_pending = " ",
      package_installed = " ",
      package_uninstalled = " ",
    },
  },

  max_concurrent_installers = 10,
}

