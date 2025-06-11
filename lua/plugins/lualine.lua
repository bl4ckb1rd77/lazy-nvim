return {
  "nvim-lualine/lualine.nvim",
  event = "VeryLazy",
  opts = function(_, opts)
    vim.opt.laststatus = 0
    -- dont show the winbar for some filetypes
    opts.options.disabled_filetypes.winbar = { "dashboard", "lazy", "alpha" }
    -- remove navic from the statusline
    local navic = table.remove(opts.sections.lualine_c)
    -- add it to the winbar instead
    opts.winbar = { lualine_b = { "filename" }, lualine_c = { navic } }
    -- table.insert(opts.theme, "catppuccin")
    opts.options.theme = "catppuccin"
    opts.options.icons_enabled = true
    opts.options.component_separators = ""
    opts.options.section_separators = ""
    opts.dependencies = { "nvim-tree/nvim-web-devicons" }
    opts.sections = {
      lualine_a = { "mode" },
      lualine_b = { "branch", "diff", "diagnostics" },
      lualine_c = { "filename" },
      lualine_x = { "encoding", "fileformat", "filetype" },
      lualine_y = { "progress" },
      lualine_z = { "location" },
    }
  end,
}
