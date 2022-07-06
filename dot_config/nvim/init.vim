call plug#begin()
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'deoplete-plugins/deoplete-jedi'
Plug 'deoplete-plugins/deoplete-clang'
Plug 'dense-analysis/ale'
Plug 'sbdchd/neoformat'
Plug 'morhetz/gruvbox'
Plug 'christoomey/vim-tmux-navigator'
Plug 'junegunn/fzf'
Plug 'junegunn/fzf.vim'
Plug 'KnoP-01/krl-for-vim'
Plug 'onerobotics/vim-tp'
"Plug 'ludovicchabant/vim-gutentags'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-unimpaired'
Plug 'psf/black', { 'branch': 'stable' }
Plug 'junegunn/gv.vim'
Plug 'airblade/vim-gitgutter'
Plug 'vim-scripts/indentpython.vim'
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
"Plug 'mattn/emmet-vim'
call plug#end()
syntax off                 " undo what plug#begin() did to syntax
filetype plugin indent off " undo what plug#begin() did to filetype
let python_highlight_all=1
syntax on                  " syntax and filetype on in that order
filetype plugin indent on  " syntax and filetype on in that order

inoremap jk <Esc>
set updatetime=200
set cursorline
set hidden
set splitbelow
set splitright

let g:deoplete#enable_at_startup = 1
"let g:user_emmet_leader_key=','

call deoplete#custom#var('clangx', 'clang_binary', '/usr/bin/clang')

" Change clang options
call deoplete#custom#var('clangx', 'default_c_options', '')
call deoplete#custom#var('clangx', 'default_cpp_options', '')

let g:ale_lint_on_enter = 0
let g:ale_lint_on_text_changed = 'never'
let g:ale_echo_msg_error_str = 'E'
let g:ale_echo_msg_warning_str = 'W'
let g:ale_echo_msg_format = '[%linter%] %s [%severity%]'
let g:ale_linters = {
    \ 'python': ['flake8'],
    \ 'vim': ['vint'],
    \ 'cpp': ['clang'],
    \ 'c': ['clang'],
    \ 'go': ['gopls'],
    \}
let g:ale_fixers = {
    \ 'python': ['black']
    \}
let g:ale_fix_on_save = 1
let g:ale_python_flake8_options = '--max-line-length=88'

" custom setting for clangformat
let g:neoformat_cpp_clangformat = {
    \ 'exe': 'clang-format',
        \ 'args': ['--style="{IndentWidth: 4}"']
        \}
let g:neoformat_enabled_cpp = ['clangformat']
let g:neoformat_enabled_c = ['clangformat']
let g:neoformat_enabled_python = ['autopep8']


let mapleader="\<SPACE>"
set showmatch           " Show matching brackets.
set relativenumber
set number              " Show the line numbers on the left side.
set number relativenumber
set scrolloff=8
set formatoptions+=o    " Continue comment marker in new lines.
set expandtab           " Insert spaces when TAB is pressed.
set tabstop=4           " Render TABs using this many spaces.
set shiftwidth=4        " Indentation amount for < and > commands.

set nojoinspaces        " Prevents inserting two spaces after punctuation on a join (J)
augroup filetype_python
    autocmd!
    au FileType python
        \ set tabstop=4 |
        \ set softtabstop=4 |
        \ set shiftwidth=4 |
        \ set expandtab |
        \ set autoindent |
        \ set fileformat=unix
augroup END
"let g:python3_host_prog=$HOME.'/.venv/neovim/bin/python'
augroup filetype_html
    autocmd!
    au BufNewFile,BufRead *.html,*.css
        \ set tabstop=2 |
        \ set softtabstop=2 |
        \ set shiftwidth=2 |
        \ set expandtab |
        \ set autoindent |
        \ set fileformat=unix
augroup END
augroup filetype_krl
    autocmd!
    au BufNewFile,BufRead *.krl,*.dat,*.sub
        \ set tabstop=2 |
        \ set softtabstop=2 |
        \ set shiftwidth=2 |
        \ set expandtab |
        \ set autoindent |
        \ set fileformat=unix
augroup END

set encoding=utf-8

" More natural splits
set splitbelow          " Horizontal split
set splitright          " Vertical split

if bufwinnr(1)
    noremap + <C-w>+
    noremap - <C-w>-
    noremap <C-n> <C-w><
    noremap <C-t> <C-w>>
endif

" Tell Vim which characters to show for expanded TABs,
" trailing whitespace, and end-of-lines. VERY useful!
if &listchars ==# 'eol:$'
    set listchars=tab:>\ ,trail:-,extends:>,precedes:<,nbsp:+
endif
set list                " Show problematic characters.

"   Also highlight all tabs and trailing whitespace characters.
highlight ExtraWhitespace ctermbg=darkgreen guibg=darkgreen
match ExtraWhitespace /\s\+$\|\t/

set ignorecase          " Make searching case insensitive
set smartcase           " ... unless the query has capital letters.
set gdefault            " Use 'g' flag by default with :s/foo/bar/.

" Use <C-s> to clear the highlighting of :set hlsearch.
if maparg('<C-s>', 'n') ==# ''
    nnoremap <silent> <C-s> :nohlsearch<CR>
endif

" Search and Replace
nnoremap <Leader>s :%s//g<Left><Left>
nnoremap <silent> <Leader><Leader> :source $MYVIMRC<cr>

nnoremap Q @q
" Close Quick fix window
nnoremap <leader>c :cclose<CR>

nnoremap <silent> <leader>f :FZF<cr>
nnoremap <silent> <leader>F :FZF ~<cr>

au BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$") |
            \ exe "normal g'\"" | endif

nmap <silent> <Leader>d <Plug>KrlListDef
" switch between src and dat files
nnoremap <silent> <Leader>a :if expand('%')=~'\.dat$' <bar> e %:s?\.dat$?.src? <bar> else <bar> e %:s?\.src$?.dat? <bar> endif<CR>

autocmd vimenter * colorscheme gruvbox
set statusline=%<%f\ %h%m%r%{fugitive#statusline()}%=%-14.(%l,%c%V%)\ %P

" Go
autocmd FileType go nmap <leader>r  <Plug>(go-run)
let g:go_doc_popup_window = 1
let g:go_list_type = "quickfix"

" Write all buffers before navigating from Vim to tmux pane
let g:tmux_navigator_save_on_switch = 2
