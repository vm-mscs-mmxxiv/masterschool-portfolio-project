set nocompatible
filetype plugin indent on
set number             " Show line numbers
syntax on              " Enable syntax highlighting
set hidden             " Allow switching between buffers without saving
set encoding=utf-8     " Use UTF-8 encoding
set autoindent         " Maintain the same indent for new lines
set smartindent        " Smart indenting for C-like languages
set wrap               " Wrap long lines (can be toggled with `gq`)
set linebreak          " Break lines at word boundaries
set cursorline         " Highlight the line where the cursor is
set showcmd            " Show incomplete commands in the status line
set hlsearch           " Highlight search results
set incsearch          " Incremental search
set ignorecase         " Ignore case when searching
set smartcase          " Override ignorecase if uppercase is used in search
set noswapfile

" Tabs and spaces
set tabstop=4          " Number of spaces a tab counts for
set shiftwidth=4       " Number of spaces to use for each step of (auto)indent
set softtabstop=4      " Number of spaces that a <Tab> counts while editing
set showtabline=1      " Show tab line  if there two or more tabs
set expandtab          " Use spaces instead of tabs
" Searching
set hlsearch
set incsearch
set ignorecase
set smartcase
set wildmenu


" turn highlighting off when entering insert mode
augroup SearchHighlight
  autocmd!
  autocmd InsertEnter * :nohlsearch
augroup END

if has("termguicolors")
  set termguicolors
endif

let g:solarized_termtrans = 1      " Transparent background
let g:solarized_visibility = "normal" " Subtle UI elements
let g:solarized_diffmode = "high"  " High contrast diffs
let g:solarized_extra_hi_groups = 0 " Enable extended highlighting
let g:solarized_statusline="normal"

" set background=dark  " or 'light'
colorscheme solarized9

inoremap jk <Esc>
nnoremap <silent><CR> :noh<CR><CR>
nnoremap <silent><Esc> :noh<CR><CR>
vnoremap <C-Q> <C-V>

" ----------- Folding -------------------------------- {{{
set foldtext=FoldText()
function! FoldText()
  return '+-- ' . (v:foldend - v:foldstart + 1) . ' lines'
endfunction

augroup Folding
  autocmd!
  " Vimscript files → use marker folding
  autocmd FileType vim setlocal foldmethod=marker foldmarker={{{,}}}
  " Python → fold by indent
  autocmd FileType python setlocal foldmethod=indent
  " JSON, YAML → fold by syntax
  autocmd FileType json,yaml,yml setlocal foldmethod=syntax
  " C/C++,Golang → fold by syntax
  autocmd FileType c,cpp,go setlocal foldmethod=syntax
  " Golang → fold by indent
  autocmd FileType go setlocal foldmethod=indent

  " Java, Rust - fold by syntax
  autocmd FileType java,rust setlocal foldmethod=syntax
augroup END " }}}


" ---------------------- NETRW CONFIGURATIONS -------------------------
let g:netrw_banner=0 " no top banner
let g:netrw_liststyle=3 " display as tree
let g:netrw_browse_split=3 " open in split window
let g:netrw_altv=1 " show vertically
let g:netrw_winsize=30 " size of split

function! ToggleVExplorer()
  if exists("t:expl_buf_num")
      let expl_win_num = bufwinnr(t:expl_buf_num)
      if expl_win_num != -1
          let cur_win_nr = winnr()
          exec expl_win_num . 'wincmd w'
          close!
          if cur_win_nr > 1
              exec (cur_win_nr - 1) . "wincmd w"
          else
              exec 'wincmd t'
          endif
          unlet t:expl_buf_num
      else
          unlet t:expl_buf_num
      endif
  else
      exec 'wincmd t'
      :Vex
      let t:expl_buf_num = bufnr("%")
  endif
endfunction

map <silent> <C-E> :call ToggleVExplorer()<CR>

function! NetrwHelp()
  echo "Netrw Basic Commands:"
  echo "---------------------------------"
  echo "Navigate:            Enter (to open), - (to go up)"
  echo "Open in Split:      v (vertical), s (horizontal)"
  echo "Open in Tab:         t (select file)"
  echo "Refresh:            :e"
  echo "Delete:             d (select file)"
  echo "Rename:             R (select file)"
  echo "Create Directory:   %d new_dir_name"
  echo "Close Netrw:        :q"
  echo "Toggle Netrw:       <Ctrl-E>"
endfunction

command! NetrwShortHelp call NetrwHelp()
augroup NetrwHelpMapping
  autocmd!
  autocmd FileType netrw nmap <buffer> ? :NetrwShortHelp<CR>
augroup END

" Rust 
autocmd BufWritePre *.rs :RustFmt


" Go
" Run gofmt on the current file before saving
autocmd BufWritePre *.go :silent! execute '!go fmt ./...' | edit!

" CoC (if installed)
set hidden
set nobackup
set nowritebackup
set updatetime=300
set signcolumn=yes

" Use rust-analyzer
let g:coc_global_extensions = ['coc-rust-analyzer']

" File types
"
autocmd FileType yaml,vim,md setlocal tabstop=2 shiftwidth=2 softtabstop=2 showtabline=1 expandtab
