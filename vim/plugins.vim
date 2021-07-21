call plug#begin('~/.vim/vim-plug')
" added
Plug 'christoomey/vim-tmux-navigator'
Plug 'terryma/vim-multiple-cursors'

" Session management
Plug 'thaerkh/vim-workspace'

" follow symlink
Plug 'moll/vim-bbye'
Plug 'aymericbeaumet/vim-symlink'

" Tmux
Plug 'edkolev/tmuxline.vim'
Plug 'tmux-plugins/vim-tmux-focus-events'

" Relative numbervs
Plug 'myusuf3/numbers.vim'

" utilities
" telescope
Plug 'nvim-lua/popup.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'

Plug 'scrooloose/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'scrooloose/nerdcommenter'
Plug 'tpope/vim-surround'

" git
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-rhubarb'
Plug 'airblade/vim-gitgutter'

Plug 'Raimondi/delimitMate'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-unimpaired'
Plug 'tpope/vim-endwise'
Plug 'tpope/vim-ragtag'
Plug 'benmills/vimux'
Plug 'vim-airline/vim-airline'
Plug 'tpope/vim-repeat'
Plug 'editorconfig/editorconfig-vim'
Plug 'MarcWeber/vim-addon-mw-utils'
Plug 'tomtom/tlib_vim'
Plug 'sotte/presenting.vim'
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

" CoC
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}

" org mode
Plug 'vimwiki/vimwiki'

" colorschemes
Plug 'sheerun/vim-wombat-scheme'
Plug 'junegunn/seoul256.vim'
Plug 'vim-airline/vim-airline-themes'
Plug 'morhetz/gruvbox'

" solidity
Plug 'TovarishFin/vim-solidity'

" JavaScript
Plug 'pangloss/vim-javascript'
Plug 'jelera/vim-javascript-syntax'

" React
Plug 'maxmellon/vim-jsx-pretty'
Plug 'HerringtonDarkholme/yats.vim'

" Ionic
Plug 'burnettk/vim-angular'
Plug 'posva/vim-vue'
Plug 'moll/vim-node'

" CSS
Plug 'hail2u/vim-css3-syntax'
Plug 'wavded/vim-stylus'
Plug 'ap/vim-css-color'
Plug 'groenewege/vim-less'
Plug 'juvenn/mustache.vim'
Plug 'cakebaker/scss-syntax.vim'

" HTML
Plug 'othree/html5.vim'
Plug 'alvan/vim-closetag'
Plug 'mattn/emmet-vim' " HTML expand tags

" formats
Plug 'elzr/vim-json'
Plug 'chrisbra/csv.vim'
Plug 'cespare/vim-toml'

" languages
Plug 'tpope/vim-markdown'
Plug 'ferrine/md-img-paste.vim'
Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() }, 'for': ['markdown', 'vim-plug']}

Plug 'fatih/vim-go'
Plug 'LaTeX-Box-Team/LaTeX-Box'
Plug 'timcharper/textile.vim'

" ruby
Plug 'vim-ruby/vim-ruby'
Plug 'vim-utils/vim-ruby-fold'
Plug 'tpope/vim-rails'
"Plug 'ngmy/vim-rubocop'

" For selecting code inside do-blocks in ruby
Plug 'kana/vim-textobj-user'
Plug 'nelstrom/vim-textobj-rubyblock'

" Python
"Plug 'nvie/vim-flake8'
Plug 'jpalardy/vim-slime'
Plug 'hanschen/vim-ipython-cell'

" Auto generatee docstrings with CTRL+I
Plug 'heavenshell/vim-pydocstring', { 'do': 'make install' }

" R
Plug 'jalvesaq/Nvim-R', {'branch': 'stable'}

" Neovim
Plug 'neomake/neomake'
call plug#end()
