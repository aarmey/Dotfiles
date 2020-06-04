set encoding=utf-8

call plug#begin()
Plug 'tpope/vim-sensible'

" vim-flake8 python linting
Plug 'https://github.com/nvie/vim-flake8'

" Git gutter plugin
Plug 'airblade/vim-gitgutter'

" vim-multiple-cursors
Plug 'terryma/vim-multiple-cursors'

" Command line colors
Plug 'itchyny/lightline.vim'

" Indent Guides
Plug 'nathanaelkane/vim-indent-guides'

" Table mode for markdown
Plug 'dhruvasagar/vim-table-mode'

" On-demand loading
Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }

" Julia Vim
Plug 'JuliaEditorSupport/julia-vim'
call plug#end()


syntax on
filetype indent plugin on
