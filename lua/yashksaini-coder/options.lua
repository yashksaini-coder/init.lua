-- Core UI & Editing Behavior
local opt = vim.opt
opt.autoindent = true
opt.smartindent = true
opt.tabstop = 4
opt.shiftwidth = 4
opt.softtabstop = -1            -- logical shiftwidth
opt.expandtab = true
opt.number = true
opt.relativenumber = true
opt.termguicolors = true
opt.clipboard:append("unnamedplus")
opt.splitbelow = true
opt.splitright = true
opt.showmode = false
opt.wrap = false
opt.scrolloff = 8
opt.sidescrolloff = 8
opt.wildmode = "longest:full,full"
opt.wildmenu = true
opt.undofile = true

-- Keymaps
vim.keymap.set("n", "<leader><Esc>", "<cmd>nohlsearch<CR>", { desc = "Clear search highlights" })

-- Transparent background
vim.api.nvim_create_augroup("TransparentBG", { clear = true })
vim.api.nvim_create_autocmd({ "VimEnter", "ColorScheme" }, {
  group = "TransparentBG",
  pattern = "*",
  callback = function()
    vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
    vim.api.nvim_set_hl(0, "NormalNC", { bg = "none" })
    vim.api.nvim_set_hl(0, "EndOfBuffer", { bg = "none" })
  end,
})

