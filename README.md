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
  
  | Mapping     | Category | Description                           |
  | ----------- | ---- | ------------------------------------- |
  | `<leader>ex` | File Explorer | Open file explorer (netrw by default) |
  | `<leader>ct` | Theme | Switch to **Chai** theme   |
  | `<leader>tt` | Theme | Switch to **TokyoNight**   |
  | `<leader>sk` | ShowKeys | Show key mappings   |


  ### Git Blame

  | Mapping     | Command | Description                           |
  | ----------- | ---- | ------------------------------------- |
  | `<leader>gb` | `:GitBlameToggle`        | Toggle blame on/off (show/hide blame info)   |
  | `<leader>gi` | `:GitBlameEnable`        | Enable blame annotations                     |
  | `<leader>gd` | `:GitBlameDisable`       | Disable blame annotations                    |
  | `<leader>gc` | `:GitBlameCopySHA`       | Copy the commit SHA of the current line      |
  | `<leader>gu` | `:GitBlameCopyCommitURL` | Copy the commit URL (if repo has remote)     |
  | `<leader>go` | `:GitBlameOpenCommitURL` | Open commit in browser (GitHub/GitLab, etc.) |

  ### Lazy.nvim Shortcuts
  
  | Mapping     | Command         | Description                  |
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
  | `<leader>ex`      | Open **explorer tab** from file level     |
  | `f` (Dashboard) | 🔍 Find file using Telescope              |
  | `r` (Dashboard) | 📂 Open recent files                      |
  | `n` (Dashboard) | ➕ Create a new empty buffer               |
  | `p` (Dashboard) | 🗂️ Open projects list (Telescope projects)|
  | `l` (Dashboard) | ⚡ Open Lazy plugin manager               |
  | `u` (Dashboard) | ⬆️ Update all plugins (Lazy update)       |
  | `q` (Dashboard) | 🚪 Quit Neovim                            |
  
  ### Plugin Shortcuts
  - `:Alpha` → Reload dashboard screen
  - `:Lazy` → Open Lazy plugin manager
  - `:Lazy update` → Update all installed plugins
  - `:Telescope find_files` → Search files
  - `:Telescope oldfiles` → Open recent files
  - `:Telescope projects` → Browse projects (requires `telescope-projects`)

## 📂 Directory Structure

```markdown

%LOCALAPPDATA%/nvim/
├── init.lua                 # Entry point (loads lua/yashksaini-coder/init.lua)
├── lazy-lock.json           # Lazy.nvim lockfile for plugin versions
├── lua/
│   └── yashksaini-coder/
│       ├── init.lua         # Main config (requires lazy.lua, remap.lua, etc.)
│       ├── lazy.lua         # Plugin manager setup (lazy.nvim)
│       ├── plugins/
│       │   └── colorscheme.lua  # Theme setup (Tokyonight)
│       └── remap.lua        # Key mappings
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