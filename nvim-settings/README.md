# NVIM settings

The content in this directory can be copy-pasted on your nvim config. Note that
doing so will override your current settings, so be sure you are not doing
something you will regret later.

Here is a command that makes my life easier when I need to install this nvim
settings again in another machine.

```bash
cp --recursive ./init.lua ./lua $HOME/.config/nvim/
```

## Features

- Plugin manager: Lazy
- Colorscheme: 
- Code completion - LSP based for:
    - Python
    - C/C++
    - Rust
    - Zig
    - JavaScript/TypeScript
- Telescope (for finding things)
- Lualine (for better status line)
- Autopairs (to avoid missing parenthesis and brackets)
- Nvim-tree (to explore directories while coding)
- Undotree (to allow undo even after reopening a file)
- Some keymaps:
    - <C-f> --> Find files with telescope (file name)
    - <C-s> --> Search on files with telescope (live fuzzy finder)
    - <C-l> --> Locate on the current buffer, the thing you are searching (fuzzy)
    - <C-g> --> Find git files
    - gd --> Go to definition (equivalent to ctrl+click on VSCode/Jetbrains)
    - K --> Shows information of the thing below the cursor (text, not your mouse)
    - <space>vca --> Code actions (like auto fix for some things)
    - <space>vrr --> Find references of the thing under cursor 
    - <space>vrn --> Rename the variable under cursor
    - <space>u --> Call undotree
    - <C-b> --> Toggle nvim-tree
