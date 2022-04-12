source $HOME/.vimrc
source $HOME/.vimrc.maps
source $HOME/.config/nvim/dein_default.vim

autocmd TermOpen * startinsert
if has('nvim')
    command! -nargs=* Term split | terminal <args>
	command! -nargs=* Termv vsplit | terminal <args>
endif
