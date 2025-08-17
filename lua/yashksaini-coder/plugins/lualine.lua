return {
  "nvim-lualine/lualine.nvim",
  dependencies = {
    "nvim-tree/nvim-web-devicons",
  },
  config = function()
    -- Wordcount
    local function get_wordcount()
      return tostring(vim.fn.wordcount().words) .. " words"
    end

    -- Reading time (200 wpm avg)
    local function reading_time()
      local wc = vim.fn.wordcount().words
      local minutes = math.ceil(wc / 200)
      return minutes .. " min"
    end

    -- Git blame
    local git_blame = require("gitblame")

    require("lualine").setup {
      options = {
        icons_enabled = true,
        theme = "tokyonight", -- try "dracula", "onedark", "gruvbox", "everforest"
        component_separators = { left = "", right = ""},
        section_separators = { left = "", right = ""},
        always_show_tabline = true,
        globalstatus = true,
        refresh = {
          statusline = 1000,
          tabline = 1000,
          winbar = 1000,
        },
      },
      sections = {
        lualine_a = { "mode" },
        lualine_b = { "branch", "diff", "diagnostics" },
        lualine_c = {
          { "filename", path = 1 },
          {
            git_blame.get_current_blame_text,
            cond = git_blame.is_blame_text_available,
          },
        },
        lualine_x = { "encoding", "fileformat", "filetype" },
        lualine_y = { "progress" },
        lualine_z = {
          "location",
          {
            get_wordcount,
            cond = function()
              return vim.bo.filetype == "markdown" or vim.bo.filetype == "text"
            end,
          },
          {
            reading_time,
            cond = function()
              return vim.bo.filetype == "markdown" or vim.bo.filetype == "text"
            end,
          },
        },
      },
      inactive_sections = {
        lualine_a = {},
        lualine_b = {},
        lualine_c = { "filename" },
        lualine_x = { "location" },
        lualine_y = {},
        lualine_z = {},
      },
    }
  end,
}

