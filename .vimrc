colorscheme desert
set nocompatible
set backspace=indent,eol,start
"set backup
set history=50
"set enc=utf8
"set tenc=gb2312
"set fenc=gb2312
set termencoding=gbk
set fileencodings=usc-bom,utf-8,chinese,big5,latin1,gb2312
set ruler
set number
set showcmd
set incsearch
syntax on
set hlsearch
set autoindent
set cindent
set mouse=""
set beautify
set showmatch
set tabstop=4
set shiftwidth=4
set expandtab
if has("autocmd")
	filetype plugin indent on
	autocmd FileType python setlocal et|setlocal sta|setlocal sw=4
	autocmd FileType ruby setlocal et|setlocal sta|setlocal sw=2
	autocmd FileType php setlocal tabstop=4|setlocal shiftwidth=4
	autocmd FileType html setlocal et|setlocal sta|setlocal sw=4
	autocmd FileType q setlocal tabstop=4|setlocal shiftwidth=4
	autocmd FileType xml setlocal tabstop=2|setlocal shiftwidth=2
endif

map  <F11>     :call SetEncodingUTF8() <CR>
imap <F11>     <Esc>:call SetEncodingUTF8() <CR>

map  <F12>	:call SetEncodingGBK() <CR>
imap <F12> 	<ESC>:call SetEncodingGBK() <CR>

map <F9>	:call SaveFile() <CR>
imap <F9>	<Esc>:call SaveFile() <CR>

func SaveFile()
    :w
endfunc

func SetEncodingUTF8()
     :set enc=utf-8
     :set tenc=gbk
endfunc

func SetEncodingGBK()
     :set enc=gbk
     :set tenc=gbk
endfunc

func Wrap()
    :set wrap
endfunc

map <F10>	:call Wrap() <CR><C-W><C-W> :call Wrap() <CR> <C-W><C-W>
imap <F10>	<Esc>:call Wrap() <C-W><C-W> :call Wrap() <C-W><C-W>

map <F7>	:call tabprevious()
map <F8>	:call tabNext()

function Ri()
    let b:x = system("ri '" . input("ri: ") . "' >/tmp/ri_output")
    sp /tmp/ri_output
endfunction

map <F2> :call Ri()<CR>

