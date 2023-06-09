return {
  -- Add the community repository of plugin specifications
  "AstroNvim/astrocommunity",
  -- example of imporing a plugin, comment out to use it or add your own
  -- available plugins can be found at https://github.com/AstroNvim/astrocommunity

  { import = "astrocommunity.colorscheme.catppuccin"},
  { "catppuccin", lazy = false },

  { import = "astrocommunity.pack.rust"},
  { import = "astrocommunity.pack.python"},
  { import = "astrocommunity.motion.leap-nvim"}

}
