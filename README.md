### ✨ yashksaini-coder's Neovim Config (init.lua)

A simple yet minimal **Lua-based Neovim configuration**.  
Built while learning Neovim on **Windows 11 terminal**, using [lazy.nvim](https://github.com/folke/lazy.nvim) as the plugin manager.

> [!Note]
> This is a beginner-friendly config. Since I’m experimenting and learning, some parts may not be perfect.  
> Use at your own choice 🚀

---

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

## 🎨 Themes

Currently using **[Tokyonight.nvim](https://github.com/folke/tokyonight.nvim)**.

Available styles:
- `night` 🌙 (default)
- `storm` ⛈️
- `moon` 🌑
- `day` ☀️

You can change the style inside `colorscheme.lua`:

```lua
opts = {
  style = "night", -- "storm" | "moon" | "day"
  transparent = false,
}
```

---

## 🔌 Plugins (managed with lazy.nvim)

This config uses [lazy.nvim](https://github.com/folke/lazy.nvim) as the plugin manager.

### Installed

* **lazy.nvim** → plugin manager
* **tokyonight.nvim** → colorscheme

### Coming soon

* File explorer
* Statusline
* Treesitter
* LSP setup

---

## ⌨️ Key Mappings

Leader key: **`<Space>`**

### Custom

| Mapping     | Mode | Description                           |
| ----------- | ---- | ------------------------------------- |
| `<Space>ex` | `n`  | Open file explorer (netrw by default) |

### Lazy.nvim Shortcuts

| Mapping     | Command         | Description                  |
| ----------- | --------------- | ---------------------------- |
| `<Space>ll` | `:Lazy`         | Open Lazy UI                 |
| `<Space>ls` | `:Lazy sync`    | Sync (install/update/remove) |
| `<Space>lu` | `:Lazy update`  | Update all plugins           |
| `<Space>li` | `:Lazy install` | Install missing plugins      |
| `<Space>lc` | `:Lazy check`   | Check plugin health          |
| `<Space>lx` | `:Lazy clean`   | Remove unused plugins        |

---

## 📌 Notes

* Built & tested on **Windows 11 (CMD/Terminal)**.
* Minimal & evolving config as I learn.
* Contributions and suggestions are welcome.