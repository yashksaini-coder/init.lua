### ✨ yashksaini-coder's Neovim Config (init.lua)

A simple yet minimal **Lua-based Neovim configuration**.  
Built while learning Neovim on **Windows 11 terminal**, using [lazy.nvim](https://github.com/folke/lazy.nvim) as the plugin manager.

> [!Note]
> This is a beginner-friendly config. Since I’m experimenting and learning, some parts may not be perfect.  
> Use at your own choice 🚀

---

## ⌨️ Key Mappings

Leader key: **`<Space>`**

### Custom

| Key / CMD     | Category | Description                           |
| ----------- | ---- | ------------------------------------- |
| `<leader>` | Utility | Press Space to open all commands options using which-key |
| `<leader>ex` | File Explorer | Open file explorer (netrw by default) |
| `<leader>ct` | Theme | Switch to **Chai** theme   |
| `<leader>tt` | Theme | Switch to **TokyoNight**   |
| `<leader>sk` | ShowKeys | Show key mappings   |
| `<leader><Esc>` | Normal | Clear search highlights (`:nohlsearch`) |
| `<C-c>` | Visual | Copy selected text to system clipboard (uses `wl-copy`) |
| `"+y` / `"+p` | Any | Yank/Paste to system clipboard (enabled via `unnamedplus`) |


### Git Blame

| Key / CMD      | Command                   | Description                                 |
| ------------ | ------------------------- | ------------------------------------------- |
| `<leader>gb` | `:GitBlameToggle`         | Toggle blame on/off (show/hide blame info)  |
| `<leader>gc` | `:GitBlameCopySHA`        | Copy the commit SHA of the current line     |
| `<leader>gu` | `:GitBlameCopyCommitURL`  | Copy the commit URL (if repo has remote)    |
| `<leader>gU` | `:GitBlameCopyFileURL`    | Copy file URL (current file at current line)|
| `<leader>go` | `:GitBlameOpenFileURL`    | Open file in browser (GitHub/GitLab, etc.)  |

### Lazy.nvim Shortcuts

| Key / CMD     | Command         | Description                  |
| ----------- | --------------- | ---------------------------- |
| `<leader>ll` | `:Lazy`         | Open Lazy UI                 |
| `<leader>ls` | `:Lazy sync`    | Sync (install/update/remove) |
| `<leader>lu` | `:Lazy update`  | Update all plugins           |
| `<leader>li` | `:Lazy install` | Install missing plugins      |
| `<leader>lc` | `:Lazy check`   | Check plugin health          |
| `<leader>lx` | `:Lazy clean`   | Remove unused plugins        |

## 🛠️ Commands & Keymaps

Here are the custom commands and key mappings I use inside Neovim.

| Key / CMD       | Purpose                                   |
|-----------------|-------------------------------------------|
| `<leader>ex`    | Open **explorer tab** from file level     |
| `f` (Dashboard) | 🔍 Find file using Telescope              |
| `r` (Dashboard) | 📂 Open recent files                      |
| `n` (Dashboard) | ➕ Create a new empty buffer              |
| `p` (Dashboard) | 🗂️ Open projects list (Telescope projects)| 
| `l` (Dashboard) | ⚡ Open Lazy plugin manager               |
| `u` (Dashboard) | ⬆️ Update all plugins (Lazy update)       |
| `q` (Dashboard) | 🚪 Quit Neovim                            |

  
| Key / CMD       | Purpose                                   |
|-----------------|-------------------------------------------|
| `K`             | LSP Hover (hover documentation)           |
| `gd`            | Go to Definition (jump to symbol)         |
| `gr`            | Find References (find usages)             |
| `gi`            | Go to Implementation (jump to symbol)     |
| `<leader>rn`    | Rename Symbol (rename symbol under cursor)|
| `<leader>ca`    | Code Action (show code actions)           |
| `<leader>f`     | Format Buffer (format current buffer)     |

  ### Plugin Shortcuts
  - `:Alpha` → Reload dashboard screen
  - `:Lazy` → Open Lazy plugin manager
  - `:Lazy update` → Update all installed plugins
  - `:Telescope find_files` → Search files
  - `:Telescope oldfiles` → Open recent files
  - `:Telescope projects` → Browse projects (requires `telescope-projects`)

### 🔑 WhichKey Integration
- Press `<Space>` (leader) and pause to see a popup of available keymaps.
- Group headers configured: `+git`, `+lazy`, `+theme`, `+showkeys`, `+explorer`, `+colors`.
- Notes:
  - WhichKey shows your existing mappings; it doesn’t create them.
  - Trigger is set to leader in normal/visual mode with a short delay (200ms).

### 🧠 LSP (Language Server) Setup
- Managed via `mason.nvim` and `mason-lspconfig.nvim`.
- Ensured/Configured LSPs (5): `lua_ls`, `pyright`, `rust_analyzer`, `gopls`, `ts_ls`.

## 📂 Directory Structure

```markdown

%LOCALAPPDATA%/nvim/
c:/Users/yashk/AppData/Local/nvim/
├── init.lua
├── lazy-lock.json
├── lua/
│   └── yashksaini-coder/
│       ├── init.lua
│       ├── lazy.lua
│       ├── options.lua
│       ├── plugins/
│       │   ├── chai.lua
│       │   ├── colorscheme.lua
│       │   ├── dashboard.lua
│       │   ├── gitblame.lua
│       │   ├── lsp.lua
│       │   ├── lualine.lua
│       │   ├── mini.lua
│       │   ├── showkeys.lua
│       │   ├── treesitter.lua
│       │   └── which-key.lua
│       └── remap.lua
└── README.md
```

---

### 📊 Statusline (lualine.nvim)
- **Always visible at the bottom**  
- Shows:
  - Mode, branch, diagnostics  
  - Filename + relative path  
  - Encoding / fileformat / filetype  
  - Progress + location  

**Extra Integrations:**
- 📜 **Git Blame** → shows who last modified the current line.  
- ✍️ **Word Count + Reading Time** → shown for Markdown / text files.  

---

## 📌 Notes

* Built & tested on **Windows 11 (CMD/Terminal)**.
* Minimal & evolving config as I learn.
* Contributions and suggestions are welcome.
