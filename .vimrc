if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin('~/.vim/plugged')
Plug 'junegunn/fzf.vim'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'rafi/awesome-vim-colorschemes'
Plug 'scrooloose/nerdtree'
Plug 'PotatoesMaster/i3-vim-syntax'
Plug 'itchyny/lightline.vim'
Plug 'tpope/vim-commentary'
Plug 'ryanoasis/vim-devicons'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
Plug 'digitaltoad/vim-pug'
Plug 'chrisbra/Colorizer'
Plug 'tpope/vim-obsession'
call plug#end()

" Basics
set clipboard=unnamed,unnamedplus
setlocal conceallevel=3
set nocompatible
filetype plugin on
syntax on
set noexpandtab
set softtabstop=0
set shiftwidth=2
set tabstop=2
" themes names https://github.com/rafi/awesome-vim-colorschemes
colorscheme alduin
"set background=light    " Setting dark or light mode
set encoding=utf-8
set number relativenumber
set mouse=a
set hlsearch
" Press Space to turn off highlighting and clear any message already displayed.
:nnoremap <silent> <Space> :nohlsearch<Bar>:echo<CR>
syntax enable       " syntax highlighting on
set cursorline			" Highlight cursor position
set laststatus=2

" Custom Options

" Enable autocompletion:
set wildmode=longest,list,full
" Disables automatic commenting on newline:
autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o
" Splits open at the bottom and right,unlike vim defaults.
set splitbelow splitright
" Shortcutting split navigation, saving a keypress:
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l
" Custom Maps

" leader+xyy to copy inside visual mode
vmap <leader>xyy :!xclip -f -sel clip<CR>
" leader+xpp to paste
map <leader>xpp mz:-1r !xclip -o -sel clip<CR>`z

" FZF Buffers
nnoremap <leader><space> :Buffers<CR>
map <F5> :CocDisable<CR>
map <F6> :CocEnable<CR>
"Move bettwen buffers                   
:nnoremap <C-n> :bnext<CR>  
:nnoremap <C-b> :bprevious<CR>
" Commands ran automatically on certain events
augroup autos
	autocmd!
	" Set dosini syntax highlighting for config files
	autocmd BufRead,BufNewFile config setf dosini
	" Ensure all .js files are treated as javascript
	autocmd BufEnter *.js :setlocal filetype=javascript
	autocmd FileType typescript set noexpandtab
	" New files start in insert
	autocmd BufNewFile * start
	autocmd!
	autocmd BufWinEnter * silent! loadview
augroup END

" Tools
"Coc Lsp server
set statusline+=%{coc#status()}
" Ensure files are read as what I want:
	let g:vimwiki_ext2syntax = {'.Rmd': 'markdown', '.rmd': 'markdown','.md': 'markdown', '.markdown': 'markdown', '.mdown': 'markdown'}
	let g:vimwiki_list = [{'path': '~/vimwiki', 'syntax': 'markdown', 'ext': '.md'}]
	autocmd BufRead,BufNewFile *.ms,*.me,*.mom,*.man set filetype=groff
	autocmd BufRead,BufNewFile *.tex set filetype=tex

	"To get correct Coc comment highlighting, add:
autocmd FileType json syntax match Comment +\/\/.\+$+
" Copy selected text to system clipboard (requires gvim/nvim/vim-x11 installed):
	vnoremap <C-c> "+y
	map <C-p> "+P
" Run xrdb whenever Xdefaults or Xresources are updated.
	autocmd BufWritePost ~/.Xresources,~/.Xdefaults !xrdb %

" Custom Scripts
" Press F4 to toggle highlighting on/off, and show current value.
:noremap <F4> :set hlsearch! hlsearch?<CR>

" Plugin Settigs

" Lightline
let g:lightline = {
      \ 'colorscheme': 'seoul256',
      \ }

" FZF Keymaps
nnoremap <silent> <leader>f :FZF/<cr>
nnoremap <silent> <leader>h :FZF~<cr>

" Nerd tree
	map <C-t> :NERDTreeToggle<CR>
	autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
" nerdTree highlight
let g:NERDTreeHighlightFolders = 1 " enables folder icon highlighting using exact match
let g:NERDTreeHighlightFoldersFullName = 1 " highlights the folder name
let g:NERDTreeChDirMode=2 "nerdtree and current directory
" you can add these colors to your .vimrc to help customizing
let s:brown = "905532"
let s:aqua =  "3AFFDB"
let s:blue = "689FB6"
let s:darkBlue = "44788E"
let s:purple = "834F79"
let s:lightPurple = "834F79"
let s:red = "AE403F"
let s:beige = "F5C06F"
let s:yellow = "F09F17"
let s:orange = "D4843E"
let s:darkOrange = "F16529"
let s:pink = "CB6F6F"
let s:salmon = "EE6E73"
let s:green = "8FAA54"
let s:lightGreen = "31B53E"
let s:white = "FFFFFF"
let s:rspec_red = 'FE405F'
let s:git_orange = 'F54D27'

let g:NERDTreeExtensionHighlightColor = {} " this line is needed to avoid error
let g:NERDTreeExtensionHighlightColor['css'] = s:blue " sets the color of css files to blue
let g:NERDTreeExactMatchHighlightColor = {} " this line is needed to avoid error
let g:NERDTreeExactMatchHighlightColor['.gitignore'] = s:git_orange " sets the color for .gitignore files
let g:NERDTreePatternMatchHighlightColor = {} " this line is needed to avoid error
let g:NERDTreePatternMatchHighlightColor['.*_spec\.rb$'] = s:rspec_red " sets the color for files ending with _spec.rb


" Coc.nvim\
" Use K for show documentation in preview window
nnoremap <silent> K :call <SID>show_documentation()<CR>

function! s:show_documentation()
  if &filetype == 'vim'
    execute 'h '.expand('<cword>')
  else
    call CocAction('doHover')
  endif
endfunction

" css-colors Plugin
let g:cssColorVimDoNotMessMyUpdatetime = 1
