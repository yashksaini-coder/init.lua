return {
	"folke/tokyonight.nvim",
	lazy = false,          -- load immediately
	priority = 1000,       -- make sure it runs before other UI plugins
	opts = {
		style = "night",     -- options: "storm", "night", "moon", "day"
		transparent = false, -- set true if you want transparent background
		styles = {
			sidebars = "dark",
			floats = "dark",
		},
	},
	config = function(_, opts)
		require("tokyonight").setup(opts)
		vim.cmd("colorscheme tokyonight")
	end,
}

