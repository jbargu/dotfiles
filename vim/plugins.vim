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

" Relative numbervs
Plug 'myusuf3/numbers.vim'

" telescope
Plug 'nvim-lua/popup.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'nvim-telescope/telescope-fzf-native.nvim', { 'do': 'make' }

Plug 'scrooloose/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'scrooloose/nerdcommenter'

" git
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-rhubarb'
Plug 'airblade/vim-gitgutter'

" utilities
Plug 'tpope/vim-unimpaired'
Plug 'Raimondi/delimitMate'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-endwise'
Plug 'tpope/vim-ragtag'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-dispatch'
Plug 'tpope/vim-vinegar'
Plug 'davidoc/taskpaper.vim'
Plug 'tpope/vim-abolish'
Plug 'vim-scripts/matchit.zip'
Plug 'tpope/vim-sleuth' " detect indent style (tabs vs. spaces)
Plug 'sickill/vim-pasta'
Plug 'majutsushi/tagbar'

" CoC
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'liuchengxu/vista.vim' " code outline

" test
Plug 'vim-test/vim-test'
" check https://github.com/rcarriga/vim-ultest for upgrade

" presenting
Plug 'sotte/presenting.vim'

" colorschemes
Plug 'vim-airline/vim-airline'
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
Plug 'ap/vim-css-color'
Plug 'groenewege/vim-less'
Plug 'juvenn/mustache.vim'
Plug 'cakebaker/scss-syntax.vim'

" HTML
Plug 'othree/html5.vim'
Plug 'alvan/vim-closetag'
Plug 'mattn/emmet-vim' " HTML expand tags
Plug 'gregsexton/MatchTag'

" formats
Plug 'elzr/vim-json'
Plug 'chrisbra/csv.vim'
Plug 'cespare/vim-toml'

" languages
Plug 'ferrine/md-img-paste.vim'
Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() }, 'for': ['markdown', 'vim-plug']}

" go
Plug 'fatih/vim-go'

" latex
Plug 'LaTeX-Box-Team/LaTeX-Box'
Plug 'timcharper/textile.vim'

" ruby
Plug 'vim-ruby/vim-ruby'
Plug 'vim-utils/vim-ruby-fold'
Plug 'tpope/vim-rails'

" For selecting code inside do-blocks in ruby
Plug 'kana/vim-textobj-user'
Plug 'nelstrom/vim-textobj-rubyblock'

" Python
Plug 'jpalardy/vim-slime'
Plug 'hanschen/vim-ipython-cell'

" Auto generatee docstrings with CTRL+I
Plug 'heavenshell/vim-pydocstring', { 'do': 'make install' }

" R
Plug 'jalvesaq/Nvim-R', {'branch': 'stable'}

" Neovim
Plug 'neomake/neomake'
call plug#end()
