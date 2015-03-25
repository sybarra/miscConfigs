
set tabstop=8
set expandtab
set shiftwidth=4

" Automatic reloading of .vimrc
autocmd! bufwritepost .vimrc source %


" Better copy and paste
" set pastetoggle=<F2>
" set clipboard=unnamed


" Mouse and backspace
set mouse=a " on OSX press ALT and click
set bs=2    " make backspace behave like normal again


" Behind <Leader> key
let mapleader = ","


" Bind nohl
" Removes hightlighting of you last search
" noremap <C-n> :nohl<CR>
" vnoremap <C-n> :nohl<CR>
" inoremap <C-n> :nohl<CR>

" Quick save command 
" Non-recursive mapping for normal mode
noremap <C-z> :!update:<CR> 
" Same as above for visual mode
vnoremap <C-z> :<C-C>:!update<CR> 
" Same as above for insert mode
inoremap <C-z> :<esc>:!update<CR>

" Quick quit command
noremap <Leader>e :!quit<CR> " Quit currnet window
noremap <Leader>E :quit<CR> " Quit all windows

" Bind Ctrl+<movement> keys to move around the window, instead of using Ctrl+w
" + <movement>
map <c-j> <c-w>j
map <c-k> <c-w>k
map <c-l> <c-w>l
map <c-h> <c-w>h

"Easier tab navigation
map <Leader>n <esc>:tabprevious<CR>
map <Leader>m <esc>:tabnext<CR>

" Map sort function to a key
vnoremap <Leader>s :sort<CR>

" Allow indenting of a whole block of selected code
vnoremap < <gv " better indention
vnoremap > >gv " better indention

" Show whitespace 
" MUST be inserted BEFROE the colorscheme command
autocmd ColorScheme * highlight ExtraWhitespace ctermbg=red guibg=red
au InsertLeave * match ExtraWhitespace /\s\+$/

" Color Scheme
" mkdir -p ~/.vim/colors && cd ~/.vim/colors
" wget -O wombat256mod.vim
" http://www.vim.org/scripts/download_scripts/download_script.php?s
set t_Co=256
color delek

"Enable syntax highlighting
" You will need to reload this file to see the change.
filetype off
filetype plugin indent on
syntax on

" Showing line numbers and length
set number " show line numbers
set tw=79  " width of document (used by gd) 
"set nowrap " don't automatically wrap on load
" set fo-=t " don't automatically wrap when typing new text
set colorcolumn=80
highlight ColorColumn ctermbg=223


" Easier formating of paragraphs
" vmap Q gq
" nmap Q gqap

" Useful settings 
set history=700
set undolevels=700

" Don't use TABs; use SPACES
set tabstop=4
set softtabstop=4
set shiftwidth=4
set shiftround
set expandtab

" Make search case insensitive
set hlsearch
set incsearch
set ignorecase
set smartcase


" Setup Pathogen to manage your vim plugins
" mkdir -p ~/.vim/autoload ~/.vim/bundle
" curl -so ~/.vim/autoload/pathogen.vim
" https://raw.github.com/tpope/vim-pathogen/HEAD/autoload/pathogen.vim
" Now you can install any plugin int a .vim/bundle/plugin-name/ folder
call pathogen#infect()


" ==============================================================================
" Python IDE Setup
" ==============================================================================

" Settings for vim-powerline
" cd ~/.vim/bundle
" git clone git://github.com/Lokalto/vim-powerline.git
set laststatus=2
"
" Settings for ctrlp
" cd ~/.vim/bundle
" git clone https://github.com/kien/ctrlp.vim.git
let g:ctrlp_max_height=30
set wildignore+=*.pyc
set wildignore+=*_build/*
set wildignore+=*/coverage/*

" Settings for python-mode
" cd ~/.vim/bundle
" git clone https://github.com/klen/python-mode
map <Leader>g :call RopeGotoDefinition()<CR>
let ropevim_enable_shortcuts=1
let g:pymode_rope_goto_def_newwin="vnew"
let g:pymode_rope_extended_complete=1
let g:pymode_breakpoint=0
let g:pymode_syntax=1
let g:pymode_syntax_builtin_objs=0
let g:pymode_syntax_builtin_funcs=0
map <Leader>b 0import ipdb: ipdb.set_trace() # BREAKPOINT<C-c>


" Better navigating through omnicomplete option list
" See http://stackoverflow.com/questions/2170023/how-to-map-keys-for-popup-menu-in-vim  
set completeopt=longest,menuone
function! OmniPopup(action)
    if pumvisible()
        if a:action == 'j'
            return "\<C-N>"
        elseif a:action == 'k'
            return "\<C-P>"
        endif 
    endif
    return a:action
endfunction

inoremap <silent><C-j> <C-R>=OmniPopup('j')<CR>
inoremap <silent><C-k> <C-R>=OmniPopup('k')<CR>

" Python folding
" mkdir -p ~/.vim/ftplugin
" wget -O ~/.vim/ftplugin/python_editing.vim http://www.vim.org/scree
set nofoldenable



" https://www.youtube.com/watch?v=YhqsjUUHj6g

