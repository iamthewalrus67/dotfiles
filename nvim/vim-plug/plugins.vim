" auto-install vim-plug
if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  "autocmd VimEnter * PlugInstall
  "autocmd VimEnter * PlugInstall | source $MYVIMRC
endif

call plug#begin('~/.config/nvim/autoload/plugged')

    " Better Syntax Support
    Plug 'sheerun/vim-polyglot'
    " File Explorer
    Plug 'scrooloose/NERDTree'
    Plug 'Xuyuanp/nerdtree-git-plugin'
     "Comment lines
    Plug 'scrooloose/nerdcommenter'
    " Icons
    Plug 'ryanoasis/vim-devicons'
    " Auto pairs for '(' '[' '{'
    Plug 'jiangmiao/auto-pairs'
    " Autocomplete
    Plug 'neoclide/coc.nvim', {'branch': 'release'}
    " Syntatic language support
    Plug 'rust-lang/rust.vim'
    " CPP Documentation
    Plug 'gauteh/vim-cppman'
    " Tmux navigation
    Plug 'christoomey/vim-tmux-navigator'
    " Quickly switch between files
    Plug 'derekwyatt/vim-fswitch'
    " Format CPP files
    Plug 'rhysd/vim-clang-format'
    " Better syntax highlighting for CPP
    Plug 'bfrg/vim-cpp-modern'
    " Collection of common configurations for the Nvim LSP client
    Plug 'neovim/nvim-lspconfig'
    " Completion framework
    Plug 'hrsh7th/nvim-cmp'
    " LSP completion source for nvim-cmp
    Plug 'hrsh7th/cmp-nvim-lsp'
    " Snippet completion source for nvim-cmp
    Plug 'hrsh7th/cmp-vsnip'
    " Other usefull completion sources
    Plug 'hrsh7th/cmp-path'
    Plug 'hrsh7th/cmp-buffer'
    " To enable more of the features of rust-analyzer, such as inlay hints and more!
    Plug 'simrat39/rust-tools.nvim'
    " Tabline
    Plug 'vim-airline/vim-airline'
    " Buffer switch
    Plug 'ctrlpvim/ctrlp.vim'
    " Tags generator
    Plug 'ludovicchabant/vim-gutentags'
    " View and search LSP symbols, tags
    Plug 'liuchengxu/vista.vim'
    " Snippets
    Plug 'rafamadriz/friendly-snippets'
    Plug 'hrsh7th/vim-vsnip'
    Plug 'hrsh7th/vim-vsnip-integ'

    " OneDark theme
    Plug 'joshdick/onedark.vim'
    " Dracula theme
    Plug 'dracula/vim'
    " Grubox theme
    Plug 'morhetz/gruvbox'

    call plug#end()
