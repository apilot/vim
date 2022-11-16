call plug#begin('~/.config/nvim/plugged')
  if has('nvim')
    Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
  else
    Plug 'Shougo/deoplete.nvim'
    Plug 'roxma/nvim-yarp'
    Plug 'roxma/vim-hug-neovim-rpc'
  endif
  Plug 'Keithbsmiley/rspec.vim', { 'for': 'ruby' }
  Plug 'Shougo/neco-syntax'
  Plug 'Shougo/neosnippet-snippets'
  Plug 'Shougo/neosnippet.vim'
  Plug 'SirVer/ultisnips'
  Plug 'Yggdroot/indentLine'
  Plug 'airblade/vim-gitgutter'
  Plug 'ajh17/VimCompletesMe'
  Plug 'alvan/vim-closetag'
  Plug 'ap/vim-css-color'
  Plug 'bfredl/nvim-miniyank'
  Plug 'cespare/vim-toml'
  Plug 'ctrlpvim/ctrlp.vim'
  Plug 'dense-analysis/ale'
  Plug 'dzeban/vim-log-syntax'
  Plug 'easymotion/vim-easymotion'
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
  Plug 'tpope/vim-endwise'
  Plug 'tpope/vim-fugitive'
  Plug 'tpope/vim-rails'
  Plug 'tpope/vim-surround'
  Plug 'vim-airline/vim-airline'
  Plug 'vim-airline/vim-airline-themes'
  Plug 'vim-ruby/vim-ruby'
  Plug 'vim-syntastic/syntastic'
  Plug 'xolox/vim-misc'
  Plug 'xolox/vim-notes'
  " tabs for vim
  Plug 'kyazdani42/nvim-web-devicons'
  Plug 'romgrk/barbar.nvim'
call plug#end()

colorscheme gruvbox
set background=dark
syntax on
set guifont=Fira\ Code\ Light:h16
let g:mapleader='\'
set expandtab
set tabstop=2 
set incsearch
set hlsearch
set nu "Отображать номеe астрок
set sw=2 "Заменяет TAB на 2 пробела
set sts=2 "Аналогично, но в случае автоотступа
let g:fuzzy_ignore = "gems/*"
let g:deoplete#enable_at_startup = 1
autocmd Filetype * AnyFoldActivate
let g:anyfold_fold_comments=1
set foldlevel=0

"mappings
map <C-n> :NERDTreeToggle<CR>
map <Leader> <Plug>(easymotion-prefix)
map <silent> <C-h> :call WinMove('h')<CR>
map <silent> <C-j> :call WinMove('j')<CR>
map <silent> <C-k> :call WinMove('k')<CR>
map <silent> <C-l> :call WinMove('l')<CR>
nmap <F8> :TagbarToggle<CR>

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

execute pathogen#infect()
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

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
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

" tab options
let bufferline = get(g:, 'bufferline', {})
let bufferline.auto_hide = v:false
let bufferline.tabpages = v:true
let bufferline.closable = v:true
let bufferline.clickable = v:true
let bufferline.icons = v:true
let bufferline.icon_separator_active = '▎'
let bufferline.icon_separator_inactive = '▎'
let bufferline.icon_close_tab = ''
let bufferline.icon_close_tab_modified = '●'
let bufferline.icon_pinned = '車'

