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
    " Icons
    Plug 'ryanoasis/vim-devicons'
    " Auto pairs for '(' '[' '{'
    Plug 'jiangmiao/auto-pairs'
    " Autocomplete
    Plug 'neoclide/coc.nvim', {'branch': 'release'}
    " Syntatic language support
    Plug 'rust-lang/rust.vim'



    " OneDark theme
    Plug 'joshdick/onedark.vim'
    " Dracula theme
    Plug 'dracula/vim'

    call plug#end()
