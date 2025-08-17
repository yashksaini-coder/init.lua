return {
  "goolord/alpha-nvim",
  dependencies = {
    "nvim-tree/nvim-web-devicons",
    "nvim-telescope/telescope.nvim",
    "folke/tokyonight.nvim"
  },
  config = function()
    local alpha = require("alpha")
    local dashboard = require("alpha.themes.dashboard")

    -- Cyberpunk ASCII Header
    dashboard.section.header.val = {
      "⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿",
      "          Arch meets Cyberpunk Neovim         ",
      "⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿",
      "",
      "         🔮  yashksaini-coder’s setup  ⚡",
      "⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿",
    }

    -- Buttons with cyberpunk icons
    dashboard.section.buttons.val = {
      dashboard.button("f", "  Find File", ":Telescope find_files<CR>"),
      dashboard.button("r", "󰄉  Recent Files", ":Telescope oldfiles<CR>"),
      dashboard.button("n", "  New File", ":ene <BAR> startinsert <CR>"),
      dashboard.button("p", "  Projects", ":Telescope projects<CR>"),
      dashboard.button("l", "󰒲  Lazy Plugins", ":Lazy<CR>"),
      dashboard.button("u", "  Update Plugins", ":Lazy update<CR>"),
      dashboard.button("q", "  Quit NVIM", ":qa<CR>"),
    }

    -- Footer
    dashboard.section.footer.val = {
      "⚡ Arch/Nix Vibes | TokyoNight Theme | Cyberpunk Edition ⚡",
    }

    -- Apply theme highlights
    dashboard.section.header.opts.hl = "Type"
    dashboard.section.buttons.opts.hl = "Keyword"
    dashboard.section.footer.opts.hl = "Comment"

    alpha.setup(dashboard.opts)
  end,
}
