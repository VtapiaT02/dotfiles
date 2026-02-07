-- En tu archivo `lua/plugins/treesitter.lua` o similar
return {
  "nvim-treesitter/nvim-treesitter",
  opts = {
    ensure_installed = {
      "dockerfile",
    },
  },
}
