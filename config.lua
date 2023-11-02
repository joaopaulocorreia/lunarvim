-- Read the docs: https://www.lunarvim.org/docs/configuration
-- Video Tutorials: https://www.youtube.com/watch?v=sFA9kX-Ud_c&list=PLhoH5vyxr6QqGu0i7tt_XoVK9v-KvZ3m6
-- Forum: https://www.reddit.com/r/lunarvim/
-- Discord: https://discord.com/invite/Xb9B4Ny

vim.opt.background = "dark"

lvim.transparent_window = false
lvim.format_on_save.enabled = true
lvim.colorscheme = "tokyonight"

lvim.keys.normal_mode["<S-j>"] = false
lvim.keys.normal_mode["<S-k>"] = false
lvim.keys.normal_mode["<S-h>"] = ":BufferLineCyclePrev<CR>"
lvim.keys.normal_mode["<S-l>"] = ":BufferLineCycleNext<CR>"

lvim.keys.normal_mode["<c-w>"] = ":ZenMode<CR>"

lvim.builtin.telescope.theme = "center"

lvim.builtin.nvimtree.setup.view.width = 45

lvim.plugins = {
  { "lunarvim/colorschemes" },
  {
    "folke/tokyonight.nvim",
    lazy = false,
    priority = 1000,
    opts = {},
  },
  {
    "tpope/vim-rails",
    cmd = {
      "Eview",
      "Econtroller",
      "Emodel",
      "Smodel",
      "Sview",
      "Scontroller",
      "Vmodel",
      "Vview",
      "Vcontroller",
      "Tmodel",
      "Tview",
      "Tcontroller",
      "Rails",
      "Generate",
      "Runner",
      "Extract"
    }
  },
  {
    "folke/zen-mode.nvim",
    cmd = "ZenMode",
    event = "BufRead",
    config = function()
      require("zen-mode").setup({
        window = {
          backdrop = 1,
          height = 0.85, -- height of the Zen window
          width = 0.7,
          options = {
            signcolumn = "no",      -- disable signcolumn
            number = false,         -- disable number column
            relativenumber = false, -- disable relative numbers
          },
        },
        plugins = {
          gitsigns = { enabled = true }, -- disables git signs
          -- your configuration comes here
          -- or leave it empty to use the default settings
          -- refer to the configuration section below
        },
      })
    end,
  },
}
