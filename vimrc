" Pathogen
execute pathogen#infect()
call pathogen#helptags()    " generate helptags for everything in 'runtimepath'
set nocompatible	        " get rid of Vi compatibility mode. SET FIRST!
filetype plugin indent on   " filetype detection[ON] plugin[ON] indent[ON]
syntax enable		        " enable syntax highlighting (previously syntax on).
set background=light 	    " Set to Solarized Light
colorscheme solarized       " Enable Solarized color scheme
set number		            " Show line numbers
set laststatus=2	        " Last window always has a statusline
filetype indent on	        " Activates indenting for files
set nohlsearch		        " Dont' conintue to hilite searched phrases
set incsearch		        " Do hilite search as you type your search.
set ignorecase	            " Make sure searches are case-insensitive.
set ruler		            " Always show info along bottom
set autoindent		        " Auto-indent
set tabstop=4		        " tab spacing
set softtabstop=4 	        " unify
set shiftwidth=4	        " indent/outdent by 4 columns
set shiftround		        " alwys indent/outdent to the nearest tabstop
set expandtab		        " use spaces instead of tabs
set smarttab	  	        " use tabs at the start of a line, spaces elsewhere
set nowrap		            " don't wrap text
