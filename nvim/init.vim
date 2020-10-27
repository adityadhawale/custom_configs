set number relativenumber
set nu rnu

inoremap <expr><tab> pumvisible() ? "\<c-n>" : "\<tab>"

call plug#begin('~/.local/share/nvim/plugged')
"
" " Make sure you use single quotes
"
" " Shorthand notation; fetches https://github.com/junegunn/vim-easy-align
Plug 'junegunn/vim-easy-align'
" " Any valid git URL is allowed
Plug 'https://github.com/junegunn/vim-github-dashboard.git'
" " On-demand loading
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'tpope/vim-fireplace', { 'for': 'clojure' }
"

" " Plugin outside ~/.vim/plugged with post-update hook
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'cloudhead/neovim-fuzzy',

" " NeoComplete plug
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }

" ale - linter / autocompletion / formatter
" Plug 'w0rp/ale'

" auto formatter
Plug 'rhysd/vim-clang-format'

" enhanced highlight
Plug 'octol/vim-cpp-enhanced-highlight'

" ctags indexer
Plug 'vim-scripts/DfrankUtil'
Plug 'vim-scripts/vimprj'
Plug 'vim-scripts/indexer.tar.gz'
Plug 'ludovicchabant/vim-gutentags'

" UltiSnips
Plug 'SirVer/ultisnips'

" easy motion
Plug 'easymotion/vim-easymotion'

" A - for switching between source and header files
Plug 'vim-scripts/a.vim'

" colorscheme
"Plug 'wombat256mod.vim'
Plug 'nanotech/jellybeans.vim'
Plug 'chriskempson/base16-vim'
Plug 'morhetz/gruvbox'
Plug 'w0ng/vim-hybrid'
Plug 'tpope/vim-vividchalk'
Plug 'lokaltog/vim-distinguished'

" airline (powerline)
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'joshdick/onedark.vim'
Plug 'rakr/vim-one'
Plug 'drewtempelmeyer/palenight.vim'

" Jedi for python
Plug 'deoplete-plugins/deoplete-jedi'

" Python autoformating
Plug 'Chiel92/vim-autoformat'
Plug 'tell-k/vim-autopep8'
Plug 'psf/black', { 'branch': 'stable' }

Plug 'othree/xml.vim'
Plug 'vim-latex/vim-latex'
Plug 'xuhdev/vim-latex-live-preview', { 'for': 'tex' }
Plug 'lervag/vimtex'

" floating window apps
Plug 'liuchengxu/vim-clap'

" smart commenting
"Plug 'scrooloose/nerdcommenter'
Plug 'preservim/nerdcommenter'
Plug 'tpope/vim-commentary'

" ALE
Plug 'w0rp/ale'

" Git Gutter
Plug 'airblade/vim-gitgutter'
Plug 'junegunn/fzf'
Plug 'terryma/vim-multiple-cursors'
Plug 'tpope/vim-surround'

" Focus mode
Plug 'junegunn/goyo.vim'

" Grammar check
"Plug  'rhysd/vim-grammarous.vim'
Plug 'dpelle/vim-LanguageTool'

" BAZEL
Plug 'google/vim-maktaba'
Plug 'bazelbuild/vim-bazel'

" " Initialize plugin system
call plug#end()

set path+=**
set wildmenu
set showcmd

set foldmethod=indent   "fold based on indent
set foldnestmax=6       "deepest fold is 3 levels

set scrolloff=8

if &encoding != 'utf-8'
    set encoding=utf-8              "Necessary to show Unicode glyphs
endif

" vim update time
set updatetime=750

set autoindent
set smartindent
set shiftwidth=2
set tabstop=2 shiftwidth=2 expandtab
" set smarttab
" set expandtab

set ignorecase
set hlsearch
set showmatch
set history=1000

" set background=dark
colorscheme hybrid
hi Normal guibg=NONE ctermbg=NONE
set t_Co=256


let g:NERDTreeWinPos = "left"
" let NERDTreeMinimalUI = 1
let NERDTreeDirArrows = 1


" ####################### JEDI ################## 
let g:deoplete#sources#jedi#enable_typeinfo = 1
let g:deoplete#sources#jedi#show_docstring = 1

let g:clang_format#command = 'clang-format-6.0'
let g:clang_format#code_style = 'google'
let g:clang_format#style_options = {
            \ "BreakBeforeBraces" : "Stroustrup",
            \ "UseTab" : "Never",
 						\ "AlignAfterOpenBracket" : "true",
 						\ "AlignConsecutiveAssignments" : "true",
            \ "IndentWidth" : 2,
            \ "ColumnLimit" : 120,
 						\ "AlwaysBreakTemplateDeclarations" : "true",
            \ "AccessModifierOffset" : -4,
            \ "AllowShortIfStatementsOnASingleLine" : "false",
            \ "AllowShortFunctionsOnASingleLine" : "false",
            \}
 let g:clang_format#auto_format = 1
 let g:clang_format#auto_format_on_insert_leave = 1

" ################ Airline ##########################

" vim airline fonts
if !exists('g:airline_symbols')
	let g:airline_symbols= {}
endif

" unicode symbols
let g:airline_theme='palenight'
let g:airline_left_alt_sep = ''
let g:airline_right_alt_sep = ''
let g:airline_left_sep = ''
let g:airline_right_sep = ''
let g:airline_symbols.crypt = '🔒'
let g:airline_symbols.linenr = ''
let g:airline_symbols.maxlinenr = '☰'
let g:airline_symbols.branch = ''
let g:airline_symbols.readonly = ''
let g:airline_symbols.paste = 'ρ'
let g:airline_symbols.spell = 'Ꞩ'
let g:airline_symbols.notexists = '∄'
let g:airline_symbols.whitespace = 'Ξ'
let g:airline_powerline_fonts = 1
let g:airline#extensions#vimtex#enabled = 1
let g:airline#extensions#vimtex#left = "{"
let g:airline#extensions#vimtex#right = "}"
let g:airline#extensions#vimtex#continuous = "c"
let g:airline_extensions#tabline#show_buffers = 1

" shortcuts for autoformatting the entire file: Ctrl+j
inoremap <C-j> <Esc>:ClangFormat<CR>a
nnoremap <C-j> <Esc>:ClangFormat<CR>

let g:deoplete#enable_at_startup = 1
autocmd InsertLeave,CompleteDone * if pumvisible() == 0 | pclose | endif
" deoplete tab-complete


" global undo
set undofile
set undodir=~/.config/nvim/undodir

" python formating options
let g:formatter_yapf_style = 'google'
" let g:autoformat_autoindent = 0
" let g:autoformat_retab = 0
let g:autoformat_remove_trailing_spaces = 0

" let g:autopep8_on_save = 1

"  latex compiling
let g:Tex_CompileRule_dvi = 'pdflatex -synctex=1 -interaction=nonstopmode $*'
let g:tex_flavor = 'pdflatex'
let g:livepreview_engine = 'pdflatex'
let g:livepreview_previewer = 'okular'
let g:livepreview_cursorhold_recompile = 0

let g:ale_fixers = ['prettier', 'eslint']
let g:ale_c_parse_makefile = 1

lef g:fzf_tags_command = 'ctags -R'
let g:fzf_buffers_jump = 1

nnoremap <silent> <leader>f :FZF<cr>
nnoremap <silent> <leader>F :FZF ~<cr>

nnoremap <C-p> :FuzzyOpen<CR>

let g:lightline = {
      \ 'colorscheme': 'onedark',
      \ }

" colorscheme one
colorscheme palenight
set background=dark

if (has("nvim"))
  "For Neovim 0.1.3 and 0.1.4 < https://github.com/neovim/neovim/pull/2198 >
  let $NVIM_TUI_ENABLE_TRUE_COLOR=1
endif

"For Neovim > 0.1.5 and Vim > patch 7.4.1799 < https://github.com/vim/vim/commit/61be73bb0f965a895bfb064ea3e55476ac175162 >
"Based on Vim patch 7.4.1770 (`guicolors` option) < https://github.com/vim/vim/commit/8a633e3427b47286869aa4b96f2bfc1fe65b25cd >
" < https://github.com/neovim/neovim/wiki/Following-HEAD#20160511 >
if (has("termguicolors"))
  set termguicolors
endif
let g:palenight_terminal_italics=1

let g:NERDSpaceDelims = 1
let g:NERDCompactSexyComs = 1
let g:NERDDefaultAlign = 'left'
let g:NERDCommentEmptyLines = 1
let g:NERDTrimTrailingWhitespace = 1
let g:NERDToggleCheckAllLines = 1
