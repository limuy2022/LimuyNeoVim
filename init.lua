-- This file simply bootstraps the installation of Lazy.nvim and then calls other files for execution
-- This file doesn't necessarily need to be touched, BE CAUTIOUS editing this file and proceed at your own risk.
local lazypath = vim.env.LAZY or vim.fn.stdpath "data" .. "/lazy/lazy.nvim"
if not (vim.env.LAZY or (vim.uv or vim.loop).fs_stat(lazypath)) then
  -- stylua: ignore
  vim.fn.system({ "git", "clone", "--filter=blob:none", "https://github.com/folke/lazy.nvim.git", "--branch=stable",
    lazypath })
end
vim.opt.rtp:prepend(lazypath)

-- validate that lazy is available
if not pcall(require, "lazy") then
  -- stylua: ignore
  vim.api.nvim_echo(
  { { ("Unable to load lazy from: %s\n"):format(lazypath), "ErrorMsg" }, { "Press any key to exit...", "MoreMsg" } },
    true, {})
  vim.fn.getchar()
  vim.cmd.quit()
end

require "lazy_setup"
require "polish"
-- vim.api.nvim_create_autocmd({ "InsertLeave" }, {
--   callback = function()
--     vim.fn.execute("silent! write")
--   end,
-- })
--
vim.cmd "noremap <leader>rd :RustLsp debuggables "
vim.cmd "noremap <leader>rt :RustLsp runnables "
vim.cmd "noremap <leader>rr :RustLsp renderDiagnostic<Enter>"
vim.cmd "noremap <leader>rp :RustLsp rebuildProcMacros<Enter>"
vim.cmd "noremap <leader>mp :MarkdownPreview<Enter>"
vim.cmd "noremap <leader>pm :Telescope projects<Enter>"
vim.cmd "noremap <leader>rt :ToggleTerm<Enter>"
if vim.g.neovide then
  vim.g.neovide_transparency = 0.8
  vim.o.guifont = "JetBrainsMono Nerd Font:h10"
  vim.g.neovide_cursor_vfx_mode = "sonicboom"
end
-- vim.o.background = dark
