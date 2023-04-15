return {
  -- You can also add new plugins here as well:
  -- Add plugins, the lazy syntax
  -- "andweeb/presence.nvim",
  -- {
  --   "ray-x/lsp_signature.nvim",
  --   event = "BufRead",
  --   config = function()
  --     require("lsp_signature").setup()
  --   end,
  -- },
  {
    "folke/todo-comments.nvim",
    dependencies = { "nvim-lua/plenary.nvim" },
    opts = {},
  },

  -- Colorschemes, non lazy loaded so that they show up in the theme picker
  { "echasnovski/mini.base16", lazy = false },
  { "rebelot/kanagawa.nvim", lazy = false },
  { "ellisonleao/gruvbox.nvim", lazy = false },
  { "sainnhe/everforest", lazy = false },
  { "nyoom-engineering/oxocarbon.nvim", lazy = false },
  { "rose-pine/neovim", name = "rose-pine", lazy = false, opts = {} },
  { "folke/tokyonight.nvim", lazy = false },
  { "marko-cerovac/material.nvim", lazy = false },
  {
    "metalelf0/jellybeans-nvim",
    lazy = false,
    dependencies = "rktjmp/lush.nvim",
  },
  {
    "EdenEast/nightfox.nvim",
    lazy = false,
    opts = {
      options = {
        module_default = false,
        modules = {
          aerial = true,
          cmp = true,
          ["dap-ui"] = true,
          dashboard = true,
          diagnostic = true,
          gitsigns = true,
          native_lsp = true,
          neotree = true,
          notify = true,
          symbol_outline = true,
          telescope = true,
          treesitter = true,
          whichkey = true,
        },
      },
      groups = { all = { NormalFloat = { link = "Normal" } } },
    },
  },
}
