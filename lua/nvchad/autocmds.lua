 local autocmd = vim.api.nvim_create_autocmd

-- Create a dedicated autocommand group for UI and file-related events
local ui_file_group = vim.api.nvim_create_augroup("NvFilePost", { clear = true })

-- Autocommand to handle UIEnter and buffer-related events
autocmd({ "UIEnter", "BufReadPost", "BufNewFile" }, {
  group = ui_file_group,
  callback = function(args)
    -- Get the buffer name and type
    local file = vim.api.nvim_buf_get_name(args.buf)
    local buftype = vim.api.nvim_get_option_value("buftype", { buf = args.buf })

    -- Set a global variable when UI has fully entered
    if not vim.g.ui_entered and args.event == "UIEnter" then
      vim.g.ui_entered = true
    end

    -- Perform actions only if the file exists, is not "nofile", and UI has entered
    if file ~= "" and buftype ~= "nofile" and vim.g.ui_entered then
      -- Trigger custom FilePost user autocommand
      vim.api.nvim_exec_autocmds("User", { pattern = "FilePost", modeline = false })

      -- Remove the autocommand group to avoid duplicate triggers
      vim.api.nvim_del_augroup_by_name("NvFilePost")

      -- Schedule additional actions
      vim.schedule(function()
        -- Trigger FileType autocommands
        vim.api.nvim_exec_autocmds("FileType", {})

        -- Apply EditorConfig settings if enabled
        if vim.g.editorconfig then
          local ok, editorconfig = pcall(require, "editorconfig")
          if ok then
            editorconfig.config(args.buf)
          else
            vim.notify("EditorConfig plugin not found", vim.log.levels.WARN)
          end
        end
      end)
    end
  end,
})
