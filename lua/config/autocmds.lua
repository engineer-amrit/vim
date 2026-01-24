-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
--
-- Add any additional autocmds here
-- with `vim.api.nvim_create_autocmd`
--
-- Or remove existing autocmds by their group name (which is prefixed with `lazyvim_` for the defaults)
-- e.g. vim.api.nvim_del_augroup_by_name("lazyvim_wrap_spell")
-- Autocommand to sync CWD to Root and Notify on every buffer/session load
vim.api.nvim_create_autocmd({ "BufReadPost", "SessionLoadPost" }, {
  callback = function()
    -- 1. Get the LazyVim-detected project root
    local root = LazyVim.root.get()

    -- 2. Force Neovim's CWD to match the detected Root
    if root and root ~= "" and root ~= vim.uv.cwd() then
      vim.api.nvim_set_current_dir(root)
    end

    -- 3. Get updated paths for the notification
    local cwd = vim.uv.cwd()

    -- 4. Popup message to confirm the state
    vim.notify(
      string.format("CWD: %s\nRoot: %s", cwd, root),
      vim.log.levels.INFO,
      { title = "Session & Directory Synced" }
    )
  end,
})
