{
	"folke/tokyonight.nvim",
	lazy = false,           -- Load at startup so the theme is immediately available
	priority = 1000,        -- Ensure it loads before other plugins
	opts = {
		style = "night",      -- Choose your preferred variant: "night", "storm", "moon", or "day"
	},
	config = function(_, opts)
		require("tokyonight").setup(opts)
		vim.cmd([[colorscheme tokyonight]])
	end,
},

