set number
set showcmd
set nocompatible
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab
set backspace=indent,eol,start
set background=dark
set autoindent
set hlsearch
"set incsearch
set mouse=a
set tags+=tags;/
set clipboard=unnamedplus
map <C-c> "+y


" Highlight cursorline
set cursorline
hi cursorline cterm=none term=none
autocmd WinEnter * setlocal cursorline
autocmd WinLeave * setlocal nocursorline
highlight CursorLine guibg=#303000 ctermbg=234


autocmd FileType c,cpp set cindent
autocmd FileType html set filetype=html
autocmd FileType html set smartindent
autocmd FileType html filetype indent on



" Comment/uncomment line
autocmd FileType c,cpp,java,scala let b:comment_leader = '//'
autocmd FileType sh,ruby,python   let b:comment_leader = '#'
autocmd FileType conf,fstab       let b:comment_leader = '#'
autocmd FileType tex              let b:comment_leader = '%'
autocmd FileType mail             let b:comment_leader = '>'
autocmd FileType vim              let b:comment_leader = '"'

execute "set <M-d>=\e[1;3B"
execute "set <M-u>=\e[1;3A"

nnoremap <silent> <C-down> :<C-B>silent <C-E>s/^/<C-R>=escape(b:comment_leader,'\/')<CR>/<CR>:nohlsearch<CR><CR>
nnoremap <silent> <C-up> :<C-B>silent <C-E>s/^/<C-R>=escape(b:comment_leader,'\/')<CR>/<CR>:nohlsearch<CR>k
nnoremap <silent> <M-d> :<C-B>silent <C-E>s/^\V<C-R>=escape(b:comment_leader,'\/')<CR>//e<CR>:nohlsearch<CR><CR>
nnoremap <silent> <M-u> :<C-B>silent <C-E>s/^\V<C-R>=escape(b:comment_leader,'\/')<CR>//e<CR>:nohlsearch<CR>k
