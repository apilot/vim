call plug#begin('~/.config/nvim/plugged')
  if has('nvim')
    Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
  else
    Plug 'Shougo/deoplete.nvim'
    Plug 'roxma/nvim-yarp'
    Plug 'roxma/vim-hug-neovim-rpc'
  endif
  Plug 'tbodt/deoplete-tabnine', { 'do': './install.sh' }
  Plug 'Keithbsmiley/rspec.vim', { 'for': 'ruby' }
  Plug 'Shougo/neco-syntax'
  Plug 'Shougo/neosnippet-snippets'
  Plug 'Shougo/neosnippet.vim'
  Plug 'SirVer/ultisnips'
  Plug 'Yggdroot/indentLine'
  Plug 'airblade/vim-gitgutter'
  Plug 'vim-scripts/VimCompletesMe'
  Plug 'alvan/vim-closetag'
  Plug 'ap/vim-css-color'
  Plug 'bfredl/nvim-miniyank'
  Plug 'cespare/vim-toml'
  Plug 'ctrlpvim/ctrlp.vim'
  Plug 'dense-analysis/ale'
  Plug 'dzeban/vim-log-syntax'
  Plug 'editorconfig/editorconfig-vim'
  Plug 'ekalinin/dockerfile.vim'
  Plug 'etordera/deoplete-rails'
  Plug 'fisadev/FixedTaskList.vim'      " Pending tasks list
  Plug 'freeo/vim-kalisi'
  Plug 'hashivim/vim-terraform'
  Plug 'honza/vim-snippets'
  Plug 'int3/vim-extradite'
  Plug 'jgdavey/vim-blockle'
  Plug 'jiangmiao/auto-pairs'
  Plug 'juliosueiras/vim-terraform-completion'
  Plug 'kana/vim-textobj-user', { 'for': ['ruby'] }
  Plug 'kchmck/vim-coffee-script'
  Plug 'kchmck/vim-coffee-script', { 'for': ['coffee', 'haml', 'eruby'] }
  Plug 'majutsushi/tagbar'              " Class/module browser
  Plug 'mfussenegger/nvim-lint'
  Plug 'morhetz/gruvbox'
  Plug 'sainnhe/sonokai'
  Plug 'mustache/vim-mustache-handlebars'
  Plug 'mxw/vim-jsx', { 'for': 'javascript.jsx' }
  Plug 'nelstrom/vim-textobj-rubyblock', { 'for': ['ruby'] }
  Plug 'othree/eregex.vim'
  Plug 'othree/html5.vim'
  Plug 'othree/javascript-libraries-syntax.vim', { 'for': ['javascript', 'javascript.jsx'] }
  Plug 'othree/jspc.vim', { 'for': ['javascript', 'javascript.jsx'] }
  Plug 'pseewald/vim-anyfold'
  Plug 'rhysd/vim-grammarous'
  Plug 'rking/ag.vim'
  Plug 'scrooloose/nerdtree', {'on': 'NERDTreeToggle' }            " Project and file navigation
  Plug 'slim-template/vim-slim'
  Plug 'stephpy/vim-yaml'
  Plug 'thinca/vim-localrc'
  Plug 'thoughtbot/vim-rspec', { 'for': 'ruby' }
  Plug 'tpope/vim-commentary'
  Plug 'nvim-treesitter/nvim-treesitter'
  Plug 'tpope/vim-endwise'
  Plug 'tpope/vim-fugitive'
  Plug 'tpope/vim-rails'
  Plug 'tpope/vim-surround'
  Plug 'kdheepak/lazygit.nvim'
  Plug 'vim-airline/vim-airline'
  Plug 'vim-airline/vim-airline-themes'
  Plug 'vim-ruby/vim-ruby'
  Plug 'vim-syntastic/syntastic'
  Plug 'xolox/vim-misc'
  Plug 'xolox/vim-notes'
  Plug 'declancm/cinnamon.nvim'
  " tabs for vim
  Plug 'romgrk/barbar.nvim'
  Plug 'nvim-lua/plenary.nvim'
  Plug 'nvim-tree/nvim-web-devicons'
  Plug 'nvim-telescope/telescope.nvim', { 'tag': '0.1.4' }
  Plug 'liuchengxu/vim-which-key'
  Plug 'frazrepo/vim-rainbow'
  Plug 'codota/tabnine-nvim', { 'do': './dl_binaries.sh' }
call plug#end()

colorscheme gruvbox
"let g:sonokai_style = 'andromeda'
set background=dark
syntax on
set guifont=Fira\ Code\ Light:h16
let g:mapleader=' '

let g:python3_host_prog = '/usr/bin/python'
set expandtab
set tabstop=2 
set incsearch
set hlsearch
set cursorline
highlight CursorLine ctermbg=black blend=50
highlight CursorColumn ctermbg=black blend=50
set cursorcolumn
set nu "Отображать номеe астрок
set sw=2 "Заменяет TAB на 2 пробела
set sts=2 "Аналогично, но в случае автоотступа
let g:fuzzy_ignore = "gems/*"
let g:deoplete#enable_at_startup = 1
autocmd Filetype * AnyFoldActivate
autocmd TermClose * :echo expand('<abuf>')
autocmd FileType TelescopePrompt call deoplete#custom#buffer_option('auto_complete', v:false)
let g:anyfold_fold_comments=1
set foldlevel=0

"mappings
map <Leader>e :NERDTreeToggle<CR>
map <silent> <C-h> :call WinMove('h')<CR>
map <silent> <C-j> :call WinMove('j')<CR>
map <silent> <C-k> :call WinMove('k')<CR>
map <silent> <C-l> :call WinMove('l')<CR>
nmap <F8> :TagbarToggle<CR>
"telescope find binds
nnoremap <leader>ff <cmd>Telescope find_files<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
nnoremap <leader>fb <cmd>Telescope buffers<cr>
nnoremap <leader>fh <cmd>Telescope help_tags<cr>
nnoremap <leader>fc <cmd>Telescope help_tags<cr>
nnoremap <silent> <leader> :WhichKey '<Space>'<CR>

nnoremap <silent> <leader>gg :LazyGit<CR>
function! WinMove(key)
  let t:curwin = winnr()
  exec 'wincmd '.a:key
  if (t:curwin == winnr())
    if(match(a:key,'[jk]'))
      wincmd v
    else
      wincmd s
    endif
    exec "wincmd ".a:key
  endif
endfunction

let g:indentLine_setColors = 0
let g:indentLine_color_term = 239
let g:indentLine_char = '⦙'
let g:tagbar_ctags_bin = '/usr/bin/ctags'


let g:airline_powerline_fonts = 1 "Включить поддержку Powerline шрифтов
let g:airline#extensions#keymap#enabled = 0 "Не показывать текущий маппинг
let g:airline_section_z = "\ue0a1:%l/%L Col:%c" "Кастомная графа положения курс>
let g:Powerline_symbols='unicode' "Поддержка unicode
let g:airline#extensions#xkblayout#enabled = 0 "Про это позже расскажу
let g:airline_theme='base16'
let g:rainbow_active = 1

set mouse=n
" filenames like *.xml, *.html, *.xhtml, ...
" These are the file extensions where this plugin is enabled.
"
let g:closetag_filenames = '*.html,*.xhtml,*.phtml'

" filenames like *.xml, *.xhtml, ...
" This will make the list of non-closing tags self-closing in the specified files.
"
let g:closetag_xhtml_filenames = '*.xhtml,*.jsx'

" filetypes like xml, html, xhtml, ...
" These are the file types where this plugin is enabled.
"
let g:closetag_filetypes = 'html,xhtml,phtml'

" filetypes like xml, xhtml, ...
" This will make the list of non-closing tags self-closing in the specified files.
"
let g:closetag_xhtml_filetypes = 'xhtml,jsx'

" integer value [0|1]
" This will make the list of non-closing tags case-sensitive (e.g. `<Link>` will be closed while `<link>` won't.)
"
let g:closetag_emptyTags_caseSensitive = 1

" dict
" Disables auto-close if not in a "valid" region (based on filetype)
"
let g:closetag_regions = {
    \ 'typescript.tsx': 'jsxRegion,tsxRegion',
    \ 'javascript.jsx': 'jsxRegion',
    \ }

" Shortcut for closing tags, default is '>'
"
let g:closetag_shortcut = '>'

" Add > at current position without closing the current tag, default is ''
"
let g:closetag_close_shortcut = '<leader>>'
let g:deoplete#enable_at_startup = 1

" execute pathogen#infect()
syntax on
filetype plugin indent on

nmap <leader>rc :call RubocopAutoFix()<CR>

" Enable snipMate compatibility feature.
let g:neosnippet#enable_snipmate_compatibility = 1

" Tell Neosnippet about the other snippets
let g:neosnippet#snippets_directory='~/.vim/bundle/vim-snippets/snippets'
let g:ale_linters = {
      \   'ruby': ['standardrb', 'rubocop'],
      \   'python': ['flake8', 'pylint'],
      \   'javascript': ['eslint'],
      \   'html': ['tidy'],
      \}

let g:ale_fixers = {
      \    'ruby': ['standardrb'],
      \}
let g:ale_fix_on_save = 1

" Syntastic Config
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 0
let g:syntastic_auto_loc_list = 0
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

" (Optional)Remove Info(Preview) window
set completeopt-=preview

" (Optional)Hide Info(Preview) window after completions
autocmd CursorMovedI * if pumvisible() == 0|pclose|endif
autocmd InsertLeave * if pumvisible() == 0|pclose|endif

" (Optional) Enable terraform plan to be include in filter
let g:syntastic_terraform_tffilter_plan = 1

" (Optional) Default: 0, enable(1)/disable(0) plugin's keymapping
let g:terraform_completion_keys = 1

" (Optional) Default: 1, enable(1)/disable(0) terraform module registry completion
let g:terraform_registry_module_completion = 0

" language servers
set hidden

let g:LanguageClient_serverCommands = {
    \ 'rust': ['~/.cargo/bin/rustup', 'run', 'stable', 'rls'],
    \ 'javascript': ['/usr/local/bin/javascript-typescript-stdio'],
    \ 'javascript.jsx': ['tcp://127.0.0.1:2089'],
    \ 'python': ['/usr/local/bin/pyls'],
    \ 'ruby': ['~/.rbenv/shims/solargraph', 'stdio'],
    \ }

nnoremap <silent> K :call LanguageClient#textDocument_hover()<CR>
nnoremap <silent> gd :call LanguageClient#textDocument_definition()<CR>
nnoremap <silent> <F2> :call LanguageClient#textDocument_rename()<CR>
nnoremap <silent> <Leader>do :lopen<CR>
nnoremap <silent> <Leader>dc :lclose<CR>

" tab options
let g:barbar_auto_setup = v:false
lua << EOF
  require('barbar').setup {
    auto_hide = false,
    tabpages = true,
    closable = true,
    clickable = true,
    exclude_ft = {'javascript'},
    exclude_name = {'package.json'},
    sidebar_filetypes = {
      NvimTree = true,
      Outline = {event = 'BufWinLeave', text = 'symbols-outline'},
    },
    icons = {
        filetype = {
        enabled = true
        },
      },
      no_name_title = nil,
  }

  require('tabnine').setup({
  disable_auto_comment=true,
  accept_keymap="<C-`>",
  dismiss_keymap = "<C-]>",
  debounce_ms = 800,
  suggestion_color = {gui = "#808080", cterm = 244},
  exclude_filetypes = {"TelescopePrompt", "NvimTree"},
  log_file_path = nil, -- absolute path to Tabnine log file
})

local configs = require("nvim-treesitter.configs")
configs.setup {
  -- Add a language of your choice
  ensure_installed = {"ruby","cpp", "python", "lua", "java", "javascript", "embedded_template"},
  sync_install = false,
  ignore_install = { "" }, -- List of parsers to ignore installing
  highlight = {
    enable = true, -- false will disable the whole extension
    disable = { "" }, -- list of language that will be disabled
    additional_vim_regex_highlighting = true,

  },
  indent = { enable = true, disable = { "yaml" } },
  rainbow = {
    enable = true,
    -- disable = { "jsx", "cpp" }, list of languages you want to disable the plugin for
    extended_mode = true, -- Also highlight non-bracket delimiters like html tags, boolean or table: lang -> boolean
    max_file_lines = nil, -- Do not enable for files with more than n lines, int
    -- colors = {}, -- table of hex strings
    -- termcolors = {} -- table of colour name strings
  }
}
EOF
