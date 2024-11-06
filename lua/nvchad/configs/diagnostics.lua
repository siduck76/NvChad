local M = {}

M.setup = function()
  vim.lsp.handlers["textDocument/publishDiagnostics"] = vim.lsp.with(vim.lsp.diagnostic.on_publish_diagnostics, {
    virtual_text = false, -- no inline diagnostics
    underline = true, -- underline problematic code
  })

  -- Set the update time for diagnostics
  vim.o.updatetime = 250

  -- Automatically show diagnostics on cursor hold
  vim.cmd [[
    autocmd CursorHold,CursorHoldI * lua vim.diagnostic.open_float(nil, { focus = false })
  ]]
end

return M
