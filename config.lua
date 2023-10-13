-- Read the docs: https://www.lunarvim.org/docs/configuration
-- Video Tutorials: https://www.youtube.com/watch?v=sFA9kX-Ud_c&list=PLhoH5vyxr6QqGu0i7tt_XoVK9v-KvZ3m6
-- Forum: https://www.reddit.com/r/lunarvim/
-- Discord: https://discord.com/invite/Xb9B4Ny

vim.opt.background = "light"

lvim.transparent_window = false
lvim.colorscheme = "lunaperche"
lvim.format_on_save.enabled = true

lvim.keys.normal_mode["<S-j>"] = false
lvim.keys.normal_mode["<S-k>"] = false
lvim.keys.normal_mode["<S-h>"] = ":BufferLineCyclePrev<CR>"
lvim.keys.normal_mode["<S-l>"] = ":BufferLineCycleNext<CR>"

lvim.keys.normal_mode["<c-w>"] = ":ZenMode<CR>"

lvim.plugins = {
  { "lunarvim/colorschemes" },
  { "folke/zen-mode.nvim" },
}
