filetype off

set rtp+=~/.vim/bundle/vundle/
call vundle#begin()

" let vundle manage vundle
Plugin 'gmarik/vundle'

" pull review
Bundle 'junkblocker/patchreview-vim'
Bundle 'codegram/vim-codereview'

" added
Bundle 'christoomey/vim-tmux-navigator'
Bundle 'terryma/vim-multiple-cursors'
Bundle 'tpope/vim-obsession'

" Folding for python
Plugin 'tmhedberg/SimpylFold'
Bundle 'edkolev/tmuxline.vim'
Plugin 'chrisbra/csv.vim'

" PEP8 for python
"Bundle "nvie/vim-flake8"

" Relative numbervs
Bundle "myusuf3/numbers.vim"

Bundle "Valloric/YouCompleteMe"
Plugin 'easymotion/vim-easymotion'

" ruby
Plugin 'vim-ruby/vim-ruby'
Plugin 'vim-utils/vim-ruby-fold'

" Elixir
Plugin 'slashmili/alchemist.vim'
Plugin 'elixir-editors/vim-elixir'

" utilities
Plugin 'tpope/vim-rails'
Plugin 'ngmy/vim-rubocop'
Plugin 'kien/ctrlp.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'Xuyuanp/nerdtree-git-plugin'
Plugin 'scrooloose/nerdcommenter'
Plugin 'mileszs/ack.vim'
Plugin 'Raimondi/delimitMate'
Plugin 'tpope/vim-commentary'
Plugin 'tpope/vim-unimpaired'
Plugin 'tpope/vim-endwise'
Plugin 'tpope/vim-ragtag'
Plugin 'tpope/vim-surround'
Plugin 'benmills/vimux'
Plugin 'bling/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'scrooloose/syntastic'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-repeat'
Plugin 'garbas/vim-snipmate'
Plugin 'mattn/emmet-vim'
Plugin 'editorconfig/editorconfig-vim'
Plugin 'MarcWeber/vim-addon-mw-utils'
Plugin 'tomtom/tlib_vim'
Plugin 'sotte/presenting.vim'
Plugin 'ervandew/supertab'
Plugin 'tpope/vim-dispatch'
Plugin 'mtth/scratch.vim'
Plugin 'itspriddle/vim-marked'
Plugin 'tpope/vim-vinegar'
Plugin 'ap/vim-css-color'
Plugin 'davidoc/taskpaper.vim'
Plugin 'tpope/vim-abolish'
Plugin 'AndrewRadev/splitjoin.vim'
Plugin 'godlygeek/tabular'
Plugin 'gbigwood/Clippo'
Plugin 'vim-scripts/matchit.zip'
Plugin 'gregsexton/MatchTag'
Plugin 'tpope/vim-sleuth' " detect indent style (tabs vs. spaces)
Plugin 'sickill/vim-pasta'
Plugin 'junegunn/goyo.vim'
Plugin 'majutsushi/tagbar'
Plugin 'airblade/vim-gitgutter'

" Ionic
Plugin 'burnettk/vim-angular'

" colorschemes
Plugin 'chriskempson/base16-vim'
Plugin 'sheerun/vim-wombat-scheme'
Plugin 'junegunn/seoul256.vim'

" JavaScript
Plugin 'hail2u/vim-css3-syntax'
Plugin 'othree/html5.vim'
Plugin 'pangloss/vim-javascript'
Plugin 'jelera/vim-javascript-syntax'
" Plugin 'jason0x43/vim-js-syntax'
" Plugin 'jason0x43/vim-js-indent'
Plugin 'wavded/vim-stylus'
Plugin 'groenewege/vim-less'
Plugin 'digitaltoad/vim-jade'
Plugin 'juvenn/mustache.vim'
Plugin 'moll/vim-node'
Plugin 'elzr/vim-json'
Plugin 'leafgarland/typescript-vim'
Plugin 'mxw/vim-jsx'
Plugin 'cakebaker/scss-syntax.vim'
" Plugin 'dart-lang/dart-vim-plugin'
" Plugin 'kchmck/vim-coffee-script'
" Plugin 'Valloric/YouCompleteMe'
" Plugin 'marijnh/tern_for_vim'
Plugin 'LaTeX-Box-Team/LaTeX-Box'

" languages
Plugin 'tpope/vim-markdown'
Plugin 'fatih/vim-go'
" Plugin 'tclem/vim-arduino'
Plugin 'timcharper/textile.vim'
call vundle#end()
filetype plugin indent on
