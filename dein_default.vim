let s:dein_dir = expand('~/.cache/dein')
let s:dein_repo_dir = s:dein_dir .  '/repos/github.com/Shougo/dein.vim'
let s:toml_dir = expand('~/.config/nvim')
" Required:
set runtimepath+=/home/treo/.cache/dein/repos/github.com/Shougo/dein.vim

if dein#load_state('~/.cache/dein')
	call dein#begin(s:dein_dir)
	call dein#load_toml(s:toml_dir . '/dein.toml', {'lazy': 0})
	call dein#load_toml(s:toml_dir . '/lazy.toml', {'lazy': 1})
	call dein#end()
	call dein#save_state()
endif
" Required:

" Required:
filetype plugin indent on
syntax enable

" If you want to install not installed plugins on startup.    
if dein#check_install()
  call dein#install()
endif
