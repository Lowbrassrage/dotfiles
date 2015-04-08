" Pathogen
filetype off " Pathogen needs to run before plugin indent on
call pathogen#infect()
call pathogen#helptags() " generate helptags for everything in 'runtimepath'
filetype plugin indent on

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

" Edit .vimrc on the fly
:nnoremap <leader>ev :vsplit $MYVIMRC<cr>
:nnoremap <leader>sv :source $MYVIMRC<cr>

" ========== General Config =========
set number 						" Let's use line numbers. 
set backspace=indent,eol,start  " Allow backspace in insert mode
set history=1000 				" Give us some more history to fall back on
set showcmd						" Show commands at the bottom
set gcr=a:blinkon0				" Disable blinking
set visualbell					" Let's mute those horrible noises
set autoread 					" Automatically read changes to files outside

" ========= Key Remapping ===========
:imap <C-BS> <C-W>				" Let Ctrl+backspace delete last word


" Switch syntax highlighting on
syntax on
 
" Enable file type detection and do language-dependent indenting.
filetype plugin indent on
 
" Allow hidden buffers, don't limit to 1 file per window/split
set hidden

" Highlight excessive line lengths
augroup vimrc_autocmds
	    autocmd!
	        " highlight characters past column 120
		 autocmd FileType python highlight Excess ctermbg=DarkGrey guibg=Black
		autocmd FileType python match Excess /\%120v.*/
		autocmd FileType python set nowrap
		augroup END

" Powerline setup
set guifont=DejaVu\ Sans\ Mono\ for\ Powerline\ 9
set laststatus=2

" =========== Indentation =========
set autoindent
set smartindent
set smarttab
set tabstop=4 
set softtabstop=0 
set noexpandtab 
set shiftwidth=4

" =========== Split Navigation =========
nnoremap <C-j> <C-W><C-J>
nnoremap <C-k> <C-W><C-K>
nnoremap <C-l> <C-W><C-L>
nnoremap <C-h> <C-W><C-H>

set splitbelow
set splitright
