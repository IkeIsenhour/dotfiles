# Setup Instructions

## 1. Binary Installations

- [oh-my-zsh](https://ohmyz.sh/)
- [Ghostty](https://ghostty.org/)
- [Homebrew](https://brew.sh/)
- [Golang](https://go.dev/doc/install)
- [Python](https://www.python.org/downloads/)
- [Ocaml](https://ocaml.org/install#linux_mac_bsd)
- [npm](https://docs.npmjs.com/downloading-and-installing-node-js-and-npm)

## 2. Homebrew Installations

- brew install asdf
- brew install rg
- brew install neovim
- brew install fzf
- brew install tmux

## 3. Neovim

### Neovim Explanation

I tried to build a Nvim config without using a base configuration, such as NvChad or LazyVim. Not to say that I am opposed to incorporating
one of these in the future. I just wanted to build my initial config from scratch for my personal understanding of Nvim. "From scratch" does not
mean I didn't pull in an third-party plugins; as you will see, I use plenty.

To begin, I followed what I felt was a very standard project structure. Starting from one's home directory:

```
~
|-- .config
    |-- nvim
        |-- init.lua
        |-- lua
            |-- config
            |-- plugins
```

You can consider the `nvim/` directory of this repository to be the top level of the true nvim directory that should live in your home directory.
That has two very important things in it: `init.lua` and `lua/`. The init file contains directions to everything nvim needs at startup.
The lua directory contain all things that the lua file is directing nvim towards.

Inside the lua directory is `config` and `plugins`. Similar to the names, the config directory only contains base configuration of Nvim. More specifically,
that means it does not include anything from a third-party. There is one exception to this, but I will mention that later on. The plugin directory, as the name suggests,
only contains configuration for third-party plugins. Going back 1 sentence to the exception I mentioned: the config directory does contain one third-party software which is
`lazy.nvim`. That is an Nvim package manager, which we use to manage the rest of our plugins. Installing that within our config, and then directing that package to the
plugin directory allows us to easily manage our plugins. There are other package manager options, but lazy.nvim seems to be the most popular at this time, especially since
`packers` discontinuation of support.

Now, a brief explanation of each plugin we installed. I will not provide links or in-depth explanations of any of these plugins as I would like the code and the official
documentation to do all the talking, but here is a short summary:

- gitsigns: provides useful buffer markers to show where changes occurred in a buffer, how many changes and what type of changes
- lualine: creates a pretty status bar at the bottom of the editor
- nvim-cmp: auto-completion. Works through the nvim-lspconfig plugin (below) to get suggestions from the lsp. Includes luasnip plugin, and signature help
- nvim-lspconfig: the mechanism through which Nvim interfaces with language servers (lsps)
- telescope: essentially a fuzzy finder for searching a directory for files and grep-ping the contents of those files
- tokyonight: just a colorscheme, many colorschemes are installed as plugins
- treesitter: can't say I've fully grasped what this does, I believe it handles much of the syntax highlighting and syntax structure
- mini-pairs: automatically finishes off character pairs (quotes, brackets, etc.)
- bufferline: essentially tabs
- nvim-tree: tree-like directory on the left
- which-key: useful tips for keymappings
- treesitter-context: code stacking of parent containers
- comment.nvim: commenting
- diffview: for seeing git diffs better, especially for git reviews
- nvim-ts-autotag: auto-closes html tags
- csvview: a nice toggle for formatting csvs

At this point, I am a fan of all of these plugins. However, if we wanted to define which ones are essential: `telescope` `nvim-lspconfig` `treesitter` `nvim-cmp` in that order.
The rest are cosmetic.

### Neovim Language Support

- Lua
  - LSP: luals
    - `brew install lua-language-server`
    - [docs](https://luals.github.io/#install)
  - Formatter: stylua
    - `brew install stylua`
- Go
  - LSP: gopls
    - Installed with Go installation
    - [go docs](https://pkg.go.dev/golang.org/x/tools/gopls)
    - [nvim-lspconfig docs](https://github.com/neovim/nvim-lspconfig/blob/master/doc/configs.md#gopls)
    - if installed and configured but not working, make sure GOPATH is added to $PATH
  - Formatter: gofmt
    - Installed with Go Installation
  - Can also do with Homebrew
    - brew install go
    - brew install gopls
- Python
  - LSP: pylsp
    - `pip install python-lsp-server`
    - [docs](https://github.com/python-lsp/python-lsp-server)
  - Formatter: black
    - `pip install black`
- HTML/GOHTML
  - npm install -g js-beautify
- CSS
  - npm install -g prettier
- Terraform
  - brew install terraform-ls
  - terraform_fmt is automatically available

### Neovim Formatters

- beautysh
  - `pip install beautysh`
- sql-formatter
  - `npm install sql-formatter`
- ocamlformat
  - `opam install ocamlformat`

## 4. ZSH Setup

1. [syntax highlighting](https://github.com/zsh-users/zsh-syntax-highlighting/blob/master/INSTALL.md)
2. [auto suggestions](https://github.com/zsh-users/zsh-autosuggestions)
3. [theme](https://github.com/romkatv/powerlevel10k)

## 5. Tmux Setup

1. Clone Tmux plugin manager (tpm): `git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm`. [Docs](https://github.com/tmux-plugins/tpm)
2. Enter Tmux in command line: `tmux`
3. Navigate to `tmux.conf` file and press `Ctrl I` (control shift i)

## 6. Stow Dot Files

From the root of this repository, run these stow commands

- `stow -t ~ nvim`
- `stow -t ~ tmux`
- `stow -t ~ zsh`
