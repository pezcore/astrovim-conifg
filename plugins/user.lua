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
    event = "User AstroFile",
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
  {
    'Mofiqul/vscode.nvim',
    lazy = false,
    opts = {
      color_overrides = {
        vscLineNumber = "grey",
      },
    }
  },
  {
    "goolord/alpha-nvim",
     config = function ()
       local alpha = require'alpha'
       local dashboard = require'alpha.themes.dashboard'
       dashboard.section.header.val = {
           [[                               __                ]],
           [[  ___     ___    ___   __  __ /\_\    ___ ___    ]],
           [[ / _ `\  / __`\ / __`\/\ \/\ \\/\ \  / __` __`\  ]],
           [[/\ \/\ \/\  __//\ \_\ \ \ \_/ |\ \ \/\ \/\ \/\ \ ]],
           [[\ \_\ \_\ \____\ \____/\ \___/  \ \_\ \_\ \_\ \_\]],
           [[ \/_/\/_/\/____/\/___/  \/__/    \/_/\/_/\/_/\/_/]],
       }
       dashboard.section.buttons.val = {
           dashboard.button( "e", "  New file"  , ":ene <BAR> startinsert <CR>"),
           dashboard.button( "f", "  Find File" , ":Tele fd<CR>"),
           dashboard.button( "o", "  Recents"   , ":Tele oldfiles<CR>"),
           dashboard.button( "w", "  Find Word" , ":Tele live_grep<CR>"),
           dashboard.button( "q", "  Quit NVIM" , ":qa<CR>"),
       }
       local handle = io.popen('fortune')
       local fortune = handle:read("*a")
       handle:close()
       dashboard.section.footer.val = fortune

       dashboard.config.opts.noautocmd = true

       vim.cmd[[autocmd User AlphaReady echo 'ready']]

       alpha.setup(dashboard.config)
     end
 },
}
