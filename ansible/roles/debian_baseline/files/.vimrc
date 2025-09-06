set nocompatible
filetype plugin on
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

" Tabs and spaces
set expandtab          " Use spaces instead of tabs
set tabstop=4          " Number of spaces a tab counts for
set shiftwidth=4       " Number of spaces to use for each step of (auto)indent
set softtabstop=4      " Number of spaces that a <Tab> counts while editing
set showtabline=1      " Show tab line  if there two or more tabs

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

" use my favorite color scheme
colorscheme solarized8 

" ********************* remaps **************************************
inoremap jk <Esc>

" remap Enter and Escape to reset hihglighting for search
nnoremap <silent><CR> :noh<CR><CR>
nnoremap <silent><Esc> :noh<CR><CR>

" Remap Ctrl-q instead of Ctrl-v done so for zsh
vnoremap <C-Q> <C-V>

" ********************** NETRW CONFIGURATIONS *************************
let g:netrw_banner=0 " no top banner
let g:netrw_liststyle=3 " display as tree
let g:netrw_browse_split=3 " open in split window
let g:netrw_altv=1 " show vertically
let g:netrw_winsize=30 " size of split

" make Ctrl-e toggle file esplorer
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

" create quick help for netrw and show it while in netwr buffer with '?'
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
  echo "Create new file      :% then enter filename"
  echo "Create new directory :d then enter directory name"
  echo "Delete file          D (capital D) on selected file"
  echo "Rename file          R"
  echo "Mark file            mf"
  echo "Copy marked files    mc"
  echo "Move marked files    mm"
  echo "Paste marked files   mp"

endfunction

command! NetrwShortHelp call NetrwHelp()
augroup NetrwHelpMapping
  autocmd!
  autocmd FileType netrw nmap <buffer> ? :NetrwShortHelp<CR>
augroup END

" ***************************** Security ************************************
"Disable swapfiles that act like an autosave in case of crash or interruption.
set noswapfile

" Disable the creation of backup files.
set nobackup
set nowritebackup

" Disable the viminfo file from copying data from your current session.
set viminfo=

" OPTIONAL: Disable copying to the system clipboard.
" set clipboard=
