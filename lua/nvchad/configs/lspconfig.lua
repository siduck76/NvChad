 local M = {}
local map = vim.keymap.set

-- Export on_attach and capabilities
M.on_attach = function(_, bufnr)
  local function opts(desc)
    return { buffer = bufnr, desc = "LSP " .. desc }
  end

  -- Key mappings for LSP functionality
  local mappings = {
    { "n", "gD", vim.lsp.buf.declaration, "Go to declaration" },
    { "n", "gd", vim.lsp.buf.definition, "Go to definition" },
    { "n", "gi", vim.lsp.buf.implementation, "Go to implementation" },
    { "n", "<leader>sh", vim.lsp.buf.signature_help, "Show signature help" },
    { "n", "<leader>wa", vim.lsp.buf.add_workspace_folder, "Add workspace folder" },
    { "n", "<leader>wr", vim.lsp.buf.remove_workspace_folder, "Remove workspace folder" },
    { "n", "<leader>wl", function()
        print(vim.inspect(vim.lsp.buf.list_workspace_folders()))
      end, "List workspace folders" },
    { "n", "<leader>D", vim.lsp.buf.type_definition, "Go to type definition" },
    { "n", "<leader>ra", require "nvchad.lsp.renamer", "NvRenamer" },
    { { "n", "v" }, "<leader>ca", vim.lsp.buf.code_action, "Code action" },
    { "n", "gr", vim.lsp.buf.references, "Show references" },
  }

  for _, map_args in ipairs(mappings) do
    map(unpack(map_args), opts(map_args[4]))
  end
end

-- Disable semantic tokens
M.on_init = function(client, _)
  if client.supports_method "textDocument/semanticTokens" then
    client.server_capabilities.semanticTokensProvider = nil
  end
end

-- LSP client capabilities
M.capabilities = vim.lsp.protocol.make_client_capabilities()
M.capabilities.textDocument.completion.completionItem = {
  documentationFormat = { "markdown", "plaintext" },
  snippetSupport = true,
  preselectSupport = true,
  insertReplaceSupport = true,
  labelDetailsSupport = true,
  deprecatedSupport = true,
  commitCharactersSupport = true,
  tagSupport = { valueSet = { 1 } },
  resolveSupport = {
    properties = {
      "documentation",
      "detail",
      "additionalTextEdits",
    },
  },
}

-- Default LSP setup
M.defaults = function()
  dofile(vim.g.base46_cache .. "lsp")
  require("nvchad.lsp").diagnostic_config()

  require("lspconfig").lua_ls.setup {
    on_attach = M.on_attach,
    capabilities = M.capabilities,
    on_init = M.on_init,
    settings = {
      Lua = {
        diagnostics = {
          globals = { "vim" },
        },
        workspace = {
          library = {
            vim.fn.expand "$VIMRUNTIME/lua",
            vim.fn.expand "$VIMRUNTIME/lua/vim/lsp",
            vim.fn.stdpath "data" .. "/lazy/ui/nvchad_types",
            vim.fn.stdpath "data" .. "/lazy/lazy.nvim/lua/lazy",
            "${3rd}/luv/library",
          },
          maxPreload = 100000,
          preloadFileSize = 10000,
        },
      },
    },
  }
end

return M
