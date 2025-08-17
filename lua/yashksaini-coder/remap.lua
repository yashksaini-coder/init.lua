vim.g.mapleader = " "
vim.keymap.set("n", "<leader>ex", vim.cmd.Ex)

-- Custom Keymaps for Lazy plugin manager
vim.keymap.set("n", "<leader>ll", "<cmd>Lazy<CR>", { desc = "Open Lazy menu" })
vim.keymap.set("n", "<leader>ls", "<cmd>Lazy sync<CR>", { desc = "Sync plugins" })
vim.keymap.set("n", "<leader>lu", "<cmd>Lazy update<CR>", { desc = "Update plugins" })
vim.keymap.set("n", "<leader>li", "<cmd>Lazy install<CR>", { desc = "Install plugins" })
vim.keymap.set("n", "<leader>lc", "<cmd>Lazy check<CR>", { desc = "Check plugin health" })
vim.keymap.set("n", "<leader>lx", "<cmd>Lazy clean<CR>", { desc = "Remove unused plugins" })

-- 🔎 Git Blame Keymaps
	-- Toggle inline blame annotations
vim.keymap.set("n", "<leader>gb", "<cmd>GitBlameToggle<CR>", { desc = "Toggle Git Blame" })

	-- Copy commit SHA of current line
vim.keymap.set("n", "<leader>gc", "<cmd>GitBlameCopySHA<CR>", { desc = "Copy Git Blame SHA" })

	-- Copy commit URL (if remote origin is set, e.g. GitHub)
vim.keymap.set("n", "<leader>gu", "<cmd>GitBlameCopyCommitURL<CR>", { desc = "Copy Git Blame URL" })

	-- Copy file URL (current file at current line)
vim.keymap.set("n", "<leader>gU", "<cmd>GitBlameCopyFileURL<CR>", { desc = "Copy File URL" })

	-- Open commit in browser (GitHub/GitLab/etc.)
vim.keymap.set("n", "<leader>go", "<cmd>GitBlameOpenFileURL<CR>", { desc = "Open File in Browser" })


-- Switching themes keymaps

	-- Switch to Chai theme
vim.keymap.set("n", "<leader>ct", function()
  require("chai").setup({
	transparent_background=true,
  })
  vim.cmd("colorscheme chai")
end, { desc = "Switch to Chai theme" })

	-- Switch back to TokyoNight
vim.keymap.set("n", "<leader>tt", function()
  require("tokyonight").setup({ style = "storm", transparent = false })
  vim.cmd("colorscheme tokyonight")
end, { desc = "Switch to TokyoNight theme" })


-- ShowKeys Toggle keymap

vim.keymap.set("n", "<leader>sk", "<cmd>ShowkeysToggle<CR>", { desc = "Toggle ShowKeys" })
