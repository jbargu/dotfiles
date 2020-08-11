call plug#begin('~/.vim/vim-plug')

" let vundle manage vundle
Plug 'gmarik/vundle'

" added
Plug 'christoomey/vim-tmux-navigator'
Plug 'terryma/vim-multiple-cursors'

" Session management
Plug 'mhinz/vim-startify'

Plug 'vifm/vifm.vim'

Plug 'edkolev/tmuxline.vim'
Plug 'chrisbra/csv.vim'

" Python
"Plug 'nvie/vim-flake8'
Plug 'jpalardy/vim-slime'
Plug 'hanschen/vim-ipython-cell'

" Auto generatee docstrings with CTRL+I
Plug 'heavenshell/vim-pydocstring'

" Relative numbervs
Plug 'myusuf3/numbers.vim'

" ruby
Plug 'vim-ruby/vim-ruby'
Plug 'vim-utils/vim-ruby-fold'
Plug 'tpope/vim-rails'
Plug 'ngmy/vim-rubocop'

" For selecting code inside do-blocks in ruby
Plug 'kana/vim-textobj-user'
Plug 'nelstrom/vim-textobj-rubyblock'

" utilities
Plug 'kien/ctrlp.vim'
Plug 'scrooloose/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'scrooloose/nerdcommenter'
Plug 'ms-jpq/chadtree', {'branch': 'chad', 'do': ':UpdateRemotePlugins'}

Plug 'mileszs/ack.vim'
Plug 'Raimondi/delimitMate'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-unimpaired'
Plug 'tpope/vim-endwise'
Plug 'tpope/vim-ragtag'
Plug 'tpope/vim-surround'
Plug 'benmills/vimux'
Plug 'bling/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-repeat'
Plug 'garbas/vim-snipmate'
Plug 'mattn/emmet-vim' " HTML expand tags
Plug 'editorconfig/editorconfig-vim'
Plug 'MarcWeber/vim-addon-mw-utils'
Plug 'tomtom/tlib_vim'
Plug 'sotte/presenting.vim'
"Plug 'ervandew/supertab'
Plug 'tpope/vim-dispatch'
Plug 'mtth/scratch.vim'
Plug 'itspriddle/vim-marked'
Plug 'tpope/vim-vinegar'
Plug 'davidoc/taskpaper.vim'
Plug 'tpope/vim-abolish'
Plug 'AndrewRadev/splitjoin.vim'
Plug 'godlygeek/tabular'
Plug 'vim-scripts/matchit.zip'
Plug 'gregsexton/MatchTag'
Plug 'tpope/vim-sleuth' " detect indent style (tabs vs. spaces)
Plug 'sickill/vim-pasta'
Plug 'majutsushi/tagbar'
Plug 'airblade/vim-gitgutter'

" CoC
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" HTML
Plug 'alvan/vim-closetag'

" Ionic
Plug 'burnettk/vim-angular'
Plug 'posva/vim-vue'
Plug 'maxmellon/vim-jsx-pretty'

" colorschemes
Plug 'chriskempson/base16-vim'
Plug 'sheerun/vim-wombat-scheme'
Plug 'junegunn/seoul256.vim'

" JavaScript
Plug 'hail2u/vim-css3-syntax'
Plug 'othree/html5.vim'
Plug 'pangloss/vim-javascript'
Plug 'jelera/vim-javascript-syntax'
" Plug 'jason0x43/vim-js-syntax'
" Plug 'jason0x43/vim-js-indent'

" CSS
Plug 'wavded/vim-stylus'
Plug 'ap/vim-css-color'
Plug 'groenewege/vim-less'
Plug 'digitaltoad/vim-jade'
Plug 'juvenn/mustache.vim'
Plug 'moll/vim-node'
Plug 'elzr/vim-json'
Plug 'leafgarland/typescript-vim'
Plug 'cakebaker/scss-syntax.vim'
" Plug 'dart-lang/dart-vim-plugin'
" Plug 'kchmck/vim-coffee-script'
" Plug 'Valloric/YouCompleteMe'
" Plug 'marijnh/tern_for_vim'
Plug 'LaTeX-Box-Team/LaTeX-Box'

" languages
Plug 'tpope/vim-markdown'
Plug 'fatih/vim-go'
" Plug 'tclem/vim-arduino'
Plug 'timcharper/textile.vim'

" Neovim
Plug 'neomake/neomake'
Plug 'sbdchd/neoformat'
call plug#end()
