## My init file for vim (init.vim)
This is my config file with all needed for my work
![Title and logos](/assets/img/title.png "Title and logos")
## How to use it
- install **neovim** to system [NeoVim Install](https://github.com/neovim/neovim/wiki/Installing-Neovim)
- install **Plug**, plugin manager ([Download plug.vim](https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim) and put it in the "autoload" directory.) 
- get local copy of repo, or copy only content from **init.vim**
- for using config file, copy **init.vim** to **~/.config/nvim** folder, or copied content to ********~/.config/nvim/init.vim********
- need to install (for Fedora)
  - sudo dnf install powerline-fonts
  - sudo dnf install fira-code-fonts
  - need to download from [DroidFonts](https://www.nerdfonts.com/font-downloads) what you like. I download and install Fira patched font. 
  for other linux distibutives need the same fonts, search by name
## Plugins
Used plugins in config for nvim with short description and shortcuts for plugins.
- tbodt/deoplete-tabnine
  > Deoplete plugin for TabNine AI
- codota/tabnine-nvim
  > Standalone TabNine integration for nvim
- Keithbsmiley/rspec.vim 
  > *This provides improved syntax highlighting for rspec.*
- Shougo/deoplete.nvim
  > *Deoplete is the abbreviation of "dark powered neo-completion". It provides an extensible and asynchronous completion framework for neovim/Vim8.*
- Shougo/neosnippet.vim
  > *plug-In adds snippet support to Vim*
- SirVer/ultisnips 
  > *UltiSnips is the ultimate solution for snippets in Vim. It has many features, speed being one of them.*
- Yggdroot/indentLine 
  > *This plugin is used for displaying thin vertical lines at each indentation level for code indented with spaces*
- airblade/vim-gitgutter
  > *A Vim plugin which shows a git diff in the sign column*
- vim-scripts/VimCompletesMe 
  > *A super simple, super minimal, super light-weight tab-completion plugin for Vim.*
- alvan/vim-closetag 
  > *The current content: ``<table| Now you press >``, the content will be: ``<table>|</table>``*
- ap/vim-css-color 
  > *A very fast, multi-syntax context-sensitive color name highlighter*
- bfredl/nvim-miniyank
  > *The killring-alike plugin with no default mappings.*
- cespare/vim-toml
  > *Vim syntax for TOML*
- dense-analysis/ale
  > *ALE (Asynchronous Lint Engine) is a plugin providing linting (syntax checking and semantic errors) in NeoVim 0.2.0+ and Vim 8 while you edit your text files, and acts as a Vim Language Server Protocol client.*
- dzeban/vim-log-syntax
  > *Vim syntax for log files*
- easymotion/vim-easymotion 
  > *EasyMotion provides a much simpler way to use some motions in vim*
- editorconfig/editorconfig-vim 
  > *This is an EditorConfig plugin for Vim*
- ekalinin/dockerfile.vim 
  > *Vim syntax for dockerfile*
- etordera/deoplete-rails 
  > *auto-completion in Vim/Neovim for your Ruby on Rails projects.*
- freeo/vim-kalisi
  > *Vim Colorscheme: kalisi*
- hashivim/vim-terraform
  > *Vim syntax for terraform*
- honza/vim-snippets
  > *snippets files for various programming languages*
- int3/vim-extradite
  > *A git commit browser / git log wrapper that extends fugitive.vim.*
- jgdavey/vim-blockle
  > *This plugin allows rapid toggling between the two different styles of ruby blocks, namely do/end and brackets {}*
- jiangmiao/auto-pairs
  > *Insert or delete brackets, parens, quotes in pair.*
- juliosueiras/vim-terraform-completion
  > *Vim Terraform Completion with Linter*
- kana/vim-textobj-user
  > *vim-textobj-user is a Vim plugin to create your own text objects without pain.*
- kchmck/vim-coffee-script
  > *Vim syntax for CoffeeScript*
- kchmck/vim-coffee-script
  > *This project adds CoffeeScript support to vim.*
- kien/ctrlp.vim
  > *Full path fuzzy file, buffer, mru, tag, ... finder for Vim (by press Ctrl + p)*
- romgrk/barbar.nvim
  > *Barbar is a Vim plugin that provides an easy way to browse the tags of the current file and get an overview of its structure (press F8)*
- mfussenegger/nvim-lint 
  > *An asynchronous linter plugin for Neovim (>= 0.6.0) complementary to the built-in Language Server Protocol support.*
- morhetz/gruvbox
  > *Designed as a bright theme with pastel 'retro groove' colors and light/dark mode switching in the way of solarized.*
- mustache/vim-mustache-handlebars
  > *mustache and handlebars mode for vim*
- mxw/vim-jsx
  > *Vim syntax for JSX*
- nelstrom/vim-textobj-rubyblock
  > *A custom text object for selecting ruby blocks.*
- othree/eregex.vim 
  > *Perl/Ruby style regular expression*
- othree/html5.vim
  > *Vim syntax for html5*
- othree/javascript-libraries-syntax.vim
  > *Syntax file for JavaScript libraries. Supports JavaScript libraries I am using (patches welcome). Should work well with other JavaScript syntax files. SyntaxComplete also works well on all supported languages.*
- othree/jspc.vim
  > *JavaScript Parameter Complete(JSPC) is a completion function for function parameters, such as event names, crypto algorithms, and common locales.*
- pseewald/vim-anyfold 
  > *Generic folding mechanism and motion based on indentation. Fold anything that is structured into indented blocks. Quickly navigate between blocks.* 
- rhysd/vim-grammarous 
  > *vim-grammarous is a powerful grammar checker for Vim. Simply do :GrammarousCheck to see the powerful checking.*
- rking/ag.vim
  > *This plugin is a front for ag, A.K.A. the_silver_searcher.* 
- roxma/nvim-yarp 
  > *remote plugin framework without :UpdateRemotePlugins*
- roxma/vim-hug-neovim-rpc
  > *trying to build a compatibility layer for neovim rpc client working on vim8.*
- scrooloose/nerdtree 
  > *file system explorer for the Vim editor (ctrl + n)*
- slim-template/vim-slim
  > *slim syntax highlighting for vim*
- stephpy/vim-yaml
  > *Vim syntax for YAML*
- thinca/vim-localrc
  > *is a Vim plugin to enable configuration file of each directory.*
- thoughtbot/vim-rspec
  > *Vim syntax for Rspec*
- tpope/vim-commentary 
  > *Comment stuff out. Use gcc to comment out a line (takes a count), gc to comment out the target of a motion* 
- tpope/vim-endwise
  > *This is a simple plugin that helps to end certain structures automatically*
- tpope/vim-fugitive
  > *Fugitive is the premier Vim plugin for Git.*
- tpope/vim-rails
  > *Vim plugin for editing Ruby on Rails applications*
- tpope/vim-surround
  > *The plugin provides mappings to easily delete, change and add such surroundings in pairs (type cs"' to change "Hello world!" to 'Hello world!')*
- vim-airline/vim-airline 
  > *Lean & mean status/tabline for vim that's light as air.*
- vim-ruby/vim-ruby 
  > *This project contains Vim's runtime files for ruby support. This includes syntax highlighting, indentation, omnicompletion, and various useful tools and mappings.*
- vim-syntastic/syntastic
  > *Syntastic is a syntax checking plugin for Vim created by Martin Grenfell. It runs files through external syntax checkers and displays any resulting errors to the user.*
- xolox/vim-misc 
  > *Miscellaneous auto-load Vim scripts*
- xolox/vim-notestpope/vim-commentary 
  > *add commentary*
- iamcco/markdown-preview.nvim
  > *Preview markdown on your modern browser with synchronised scrolling and flexible configuration. For activate: **:MarkdownPreview** for disable: **:MarkdownPreviewStop***
- nvim-telescope/telescope.nvim
  > highly extendable fuzzy finder over lists. Built on the latest awesome features from neovim core. Telescope is centered around modularity, allowing for easy customization.
- liuchengxu/vim-which-key
  > displays available keybindings in popup

## Theme and hotkeys

> colorscheme ``gruvbox``

> g:mapleader='``\``' 

> ``<C-n>`` :NERDTreeToggle<CR>

> ``<C-h>`` :call WinMove('h')<CR>

> ``<C-j>`` :call WinMove('j')<CR>

> ``<C-k>`` :call WinMove('k')<CR>

> ``<C-l>`` :call WinMove('l')<CR>

> ``<F8>`` :TagbarToggle<CR>

## Screenshots

[![Openned NerdTree and tagBar](/assets/img/screenshot.png "Openned NerdTree and TagBar")](/assets/img/screenshot.png)
