# Neovim Cheatsheet

This cheatsheet covers essential commands for multi-window development in Neovim based on the kickstart.nvim configuration. It's designed to help VSCode power users transition to Neovim workflows.

## Essential Navigation

### Basic Movement
- `h`, `j`, `k`, `l` - Left, down, up, right
- `w` / `b` - Move forward/backward by word
- `0` / `$` - Start/end of line
- `gg` / `G` - Top/bottom of file
- `{` / `}` - Jump to previous/next paragraph
- `Ctrl+d` / `Ctrl+u` - Half-page down/up
- `Ctrl+f` / `Ctrl+b` - Full-page down/up

### Relative Line Numbers
Your configuration includes relative line numbers, allowing for efficient jumps:
- `5j` - Move down 5 lines
- `10k` - Move up 10 lines

### Buffer Navigation
- `<leader><space>` - Show open buffers (via Telescope)
- `Ctrl+o` / `Ctrl+i` - Navigate backward/forward in jump list

## Window Management

### Split Management
- `:vsplit` or `:vs` - Vertical split
- `:split` or `:sp` - Horizontal split
- `Ctrl+w s` - Horizontal split
- `Ctrl+w v` - Vertical split
- `Ctrl+w q` or `:q` - Close window

### Window Navigation
- `Ctrl+w h` - Move to left window
- `Ctrl+w j` - Move to window below
- `Ctrl+w k` - Move to window above
- `Ctrl+w l` - Move to right window
- `Ctrl+w w` - Cycle through windows

### Window Resizing
- `Ctrl+w >` - Increase width
- `Ctrl+w <` - Decrease width
- `Ctrl+w +` - Increase height
- `Ctrl+w -` - Decrease height
- `Ctrl+w =` - Make all windows equal size

## File Explorer (Neo-tree)

Neo-tree is similar to VSCode's explorer:

- `:Neotree` - Open file explorer
- `<key>` - Open file or directory (default)
- `r` - Rename
- `d` - Delete
- `a` - Add new file/directory
- `y` - Copy file/path
- `x` - Cut
- `p` - Paste
- `c` - Copy to clipboard
- `?` - Show help

## Terminal Integration

ToggleTerm provides integrated terminal functionality:

- `Ctrl+\` - Toggle terminal window
- `:ToggleTerm` - Toggle terminal
- `:ToggleTerm size=40 direction=horizontal` - Open horizontal terminal
- `:ToggleTerm size=80 direction=vertical` - Open vertical terminal
- `:ToggleTerm direction=float` - Open floating terminal
- `Ctrl+d` or type `exit` - Close terminal session

## Code Intelligence (LSP)

### Code Navigation
- `gd` - Go to definition
- `gr` - Go to references
- `gI` - Go to implementation
- `<leader>D` - Go to type definition
- `K` - Show hover documentation
- `<Ctrl+k>` - Show signature help
- `gD` - Go to declaration

### Code Actions
- `<leader>rn` - Rename symbol
- `<leader>ca` - Code actions
- `:Format` - Format current buffer

### Diagnostics
- `<leader>e` - Show diagnostics in floating window
- `[d` / `]d` - Previous/next diagnostic
- `<leader>q` - Show diagnostics in location list

## Fuzzy Finding (Telescope)

Telescope is similar to VSCode's Command Palette and Quick Open:

- `<leader>sf` - Search files
- `<leader>sg` - Live grep (search text in project)
- `<leader>/` - Search in current buffer
- `<leader>?` - Search recently opened files
- `<leader>gf` - Search git files
- `<leader>s/` - Search in open files
- `<leader>sh` - Search help
- `<leader>ss` - Select Telescope picker
- `<leader>sG` - Search by grep on Git root
- `<leader>sd` - Search diagnostics

## Git Integration

### Gitsigns
- `<leader>hs` - Stage hunk
- `<leader>hr` - Reset hunk
- `<leader>hS` - Stage buffer
- `<leader>hu` - Undo stage hunk
- `<leader>hR` - Reset buffer
- `<leader>hp` - Preview hunk
- `<leader>hb` - Blame line
- `<leader>tb` - Toggle blame
- `<leader>hd` - Diff against index
- `<leader>hD` - Diff against last commit
- `]c` / `[c` - Next/previous hunk

### Fugitive
- `:Git` - Git status
- `:Git commit` - Git commit
- `:Git push` - Git push
- `:Git pull` - Git pull
- `:Git log` - Git log
- `:Git blame` - Git blame
- `:Gdiffsplit` - Git diff in split view

## Text Editing and Manipulation

### Autopairs
Automatically inserts closing brackets and quotes.

### Nvim-Surround
Similar to VSCode's quotation and bracket plugins:
- `ys{motion}{char}` - Add surround (e.g., `ysiw"` surrounds word with quotes)
- `ds{char}` - Delete surround
- `cs{target}{replacement}` - Change surround

### Comment.nvim
- `gcc` - Toggle line comment
- `gc{motion}` - Toggle comment for selection or motion
- `gcap` - Comment a paragraph

### Incremental Selection (Treesitter)
- `<C-space>` - Initialize or grow selection
- `<M-space>` - Shrink selection

## VSCode-like Features

These features may help you feel more at home coming from VSCode:

### Similar to Command Palette
- `<leader>` - Access most commands (Which-key shows options)
- `<leader>ss` - Telescope builtin (similar to command palette)

### Similar to Quick Open
- `<leader>sf` - Find files
- `<leader>?` - Recent files

### Similar to Explorer View
- `:Neotree` - Open file explorer

### Similar to Problems View
- `<leader>sd` - Show all diagnostics

### Similar to Source Control View
- `:Git` - Open Git status

### Similar to Search
- `<leader>sg` - Live grep
- `<leader>sw` - Search current word

### Mouse Support
Your config has `mouse = 'a'`, enabling full mouse support:
- Click to position cursor
- Click and drag to select
- Right-click for context menu

## Tips for VSCode Users

1. Use `<leader>` (Space) to discover available commands
2. Remember that Neovim is modal - operations follow the pattern: `[operator][count][motion]`
3. Take advantage of text objects (`iw`, `i"`, `i{`, etc.) for precise manipulation
4. Prefer using `<leader>` commands over typing longer commands manually
5. Use Telescope for fuzzy finding files and text, similar to VSCode's Quick Open
6. The LSP provides similar functionality to VSCode's IntelliSense
7. The Neo-tree file explorer will feel similar to VSCode's Explorer view

## Additional Resources

- Run `:Tutor` for a hands-on Vim tutorial
- Run `:help` for comprehensive documentation
- Run `:checkhealth` to verify all plugins are working correctly
