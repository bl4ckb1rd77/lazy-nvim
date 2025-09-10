return {
  {
    "kevinhwang91/nvim-ufo",
    dependencies = { "nvim-treesitter/nvim-treesitter" },
    config = function()
      vim.o.foldcolumn = "1" -- '0' doesn't show fold column, higher values increase its width
      vim.o.foldlevel = 99
      vim.o.foldlevelstart = 99
      vim.o.foldenable = true
      require("ufo").setup({
        provider_selector = function(bufnr, filetype, buftype)
          return { "treesitter", "indent" }
        end,
      })
    end,
  },
}
