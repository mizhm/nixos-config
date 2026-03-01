return {
  {
    "RRethy/base16-nvim",
    enabled = false,
    priority = 1000,
    config = function()
      require("base16-colorscheme").setup({
        base00 = "#0b151a",
        base01 = "#0b151a",
        base02 = "#98a1a5",
        base03 = "#98a1a5",
        base04 = "#eef9ff",
        base05 = "#f8fcff",
        base06 = "#f8fcff",
        base07 = "#f8fcff",
        base08 = "#ff95b7",
        base09 = "#ff95b7",
        base0A = "#88d7ff",
        base0B = "#9dffa8",
        base0C = "#c0eaff",
        base0D = "#88d7ff",
        base0E = "#9ddeff",
        base0F = "#9ddeff",
      })

      vim.api.nvim_set_hl(0, "Visual", {
        bg = "#98a1a5",
        fg = "#f8fcff",
        bold = true,
      })
      vim.api.nvim_set_hl(0, "Statusline", {
        bg = "#88d7ff",
        fg = "#0b151a",
      })
      vim.api.nvim_set_hl(0, "LineNr", { fg = "#98a1a5" })
      vim.api.nvim_set_hl(0, "CursorLineNr", { fg = "#c0eaff", bold = true })

      vim.api.nvim_set_hl(0, "Statement", {
        fg = "#9ddeff",
        bold = true,
      })
      vim.api.nvim_set_hl(0, "Keyword", { link = "Statement" })
      vim.api.nvim_set_hl(0, "Repeat", { link = "Statement" })
      vim.api.nvim_set_hl(0, "Conditional", { link = "Statement" })

      vim.api.nvim_set_hl(0, "Function", {
        fg = "#88d7ff",
        bold = true,
      })
      vim.api.nvim_set_hl(0, "Macro", {
        fg = "#88d7ff",
        italic = true,
      })
      vim.api.nvim_set_hl(0, "@function.macro", { link = "Macro" })

      vim.api.nvim_set_hl(0, "Type", {
        fg = "#c0eaff",
        bold = true,
        italic = true,
      })
      vim.api.nvim_set_hl(0, "Structure", { link = "Type" })

      vim.api.nvim_set_hl(0, "String", {
        fg = "#9dffa8",
        italic = true,
      })

      vim.api.nvim_set_hl(0, "Operator", { fg = "#eef9ff" })
      vim.api.nvim_set_hl(0, "Delimiter", { fg = "#eef9ff" })
      vim.api.nvim_set_hl(0, "@punctuation.bracket", { link = "Delimiter" })
      vim.api.nvim_set_hl(0, "@punctuation.delimiter", { link = "Delimiter" })

      vim.api.nvim_set_hl(0, "Comment", {
        fg = "#98a1a5",
        italic = true,
      })

      local current_file_path = vim.fn.stdpath("config") .. "/lua/plugins/dankcolors.lua"
      if not _G._matugen_theme_watcher then
        local uv = vim.uv or vim.loop
        _G._matugen_theme_watcher = uv.new_fs_event()
        _G._matugen_theme_watcher:start(
          current_file_path,
          {},
          vim.schedule_wrap(function()
            local new_spec = dofile(current_file_path)
            if new_spec and new_spec[1] and new_spec[1].config then
              new_spec[1].config()
              print("Theme reload")
            end
          end)
        )
      end
    end,
  },
}
