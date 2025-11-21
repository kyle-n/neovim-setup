# nvim config

Backup repository for my Neovim configuration files.

## Installation

### Prerequisites

1. [Homebrew](https://brew.sh/)
2. [Git](https://git-scm.com/)
3. [Node.js](https://nodejs.org/)

### Steps

1. Install [tmux](https://github.com/tmux/tmux/wiki)
2. Install [Neovim](https://neovim.io/)
3. Install [ripgrep](https://github.com/BurntSushi/ripgrep?tab=readme-ov-file#installation)
4. Change `~/.vimrc` to:

```sh
source ~/.config/nvim/vimcfg
```

5. Clone this repository to `~/.config/nvim`:

```sh
cd ~/.config
git clone git@github.com:kyle-n/neovim-setup.git
mv neovim-setup nvim
```

5. Install [typescript-language-server](https://github.com/typescript-language-server/typescript-language-server)
6. Install [vim-plug](https://github.com/junegunn/vim-plug)
7. Open Neovim and run:

```vim
:PlugInstall
```

8. Also run:

```vim
CocInstall coc-angular
```

Enjoy!

## Todo

- Autocomplete for Tailwind classes
- LSP for Angular HTML files
- LSP for SCSS files

## Keyboard cheat sheet

- `:NvimTreeToggle` / `\tt`: Toggle file tree
- `:NvimTreeFocus` / `\tf`
- `:NvimTreeCollapse`

- `Ctrl-w,d`: Show warning
- `%`: Jump to matching parenthesis or bracket
- `\f`: Format code
- `jk`: Exit insertion mode

- `:Telescope live_grep {query}` / `\fg`: Search across files
- `\ff`: Find file by name

- `:BufferDelete` / `:bd`: Close tab
- `:BufferPrevious` / `:bp`: Previous tab
- `:BufferNext` / `:bn`: Next tab
- `:ls`: List open tabs with buffer numbers
- `:b0`: Switch to buffer #0 (example)
- `:Bd`: Close all tabs
- `:Bo`: Close all tabs but current
