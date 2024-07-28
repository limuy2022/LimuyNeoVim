-- AstroCommunity: import any community modules here
-- We import this file in `lazy_setup.lua` before the `plugins/` folder.
-- This guarantees that the specs are processed before any user plugins.

---@type LazySpec
return {
  -- Add the community repository of plugin specifications
  "AstroNvim/astrocommunity",
  -- example of importing a plugin, comment out to use it or add your own
  -- available plugins can be found at https://github.com/AstroNvim/astrocommunity
  -- { import = "astrocommunity.colorscheme.catppuccin" },
  { import = "astrocommunity.pack.python" },
  { import = "astrocommunity.pack.rust" },
  { import = "astrocommunity.pack.cpp" },
  { import = "astrocommunity.pack.lua" },
  { import = "astrocommunity.pack.godot" },
  { import = "astrocommunity.pack.markdown" },
  { import = "astrocommunity.pack.html-css" },
  { import = "astrocommunity.lsp.lsp-inlayhints-nvim" },
  { import = "astrocommunity.colorscheme.catppuccin" },
  -- { import = "astrocommunity.colorscheme.everforest" },
  { import = "astrocommunity.project.project-nvim" },
  -- { import = "astrocommunity.diagnostics.error-lens-nvim" },
  -- { import = "astrocommunity.completion.codeium-vim" },
}
