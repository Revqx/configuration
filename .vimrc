syntax on
set tabstop=4
set shiftwidth=4
set ai
set si
set is
set cb=unnamed
set hls
set ruler
set undofile
set undodir=$HOME/.vim/undo

highlight Comment ctermfg=green
set backspace=indent,eol,start
colo monokai

imap jj <Esc>
imap yy <Esc>:%y+<CR>
imap cc <Esc>:s/^/\/\/ /<Enter><S-a>
imap CC <Esc>:s/^\/\/ //<Enter><S-a>
imap <Tab> <C-t>
imap <S-Tab> <C-d>
imap { {}<Left>
imap {<CR> {<CR>}<Esc>O
imap {{ {
imap {} {}
imap <A-Space> <space>

nmap yy :%y+<CR>
nmap cc :s/^/\/\/ /<Enter>
nmap CC :s/^\/\/ //<Enter>

autocmd filetype cpp imap <C-c> <Esc>:w <bar> !g++ -std=c++14 % -o %:r -Wall -O2<CR>
autocmd filetype cpp imap <C-x> :!./%:r<CR>
autocmd filetype cpp nmap <C-c> :w <bar> !g++ -std=c++14 % -o %:r -Wall -O2<CR>
autocmd filetype cpp nmap <C-x> :!./%:r<CR>

set number
augroup numbertoggle
	autocmd!
    autocmd BufEnter,FocusGained,InsertLeave * set rnu
    autocmd BufLeave,FocusLost,InsertEnter * set nornu
augroup END

autocmd filetype cpp call Default()
function Default()

    if line("$") == 1
		call append(0, "#include<bits/stdc++.h>")
        call append(1, "using namespace std;")
        call append(2, "")
		call append(3, "#define ll long long")
		call append(4, "#define ar array")
		call append(5, "")
        call append(6, "int main() {")
        call append(7, "\<Tab>ios::sync_with_stdio(0);")
        call append(8, "\<Tab>cin.tie(0);")
        call append(9, "\<Tab>")
        call append(10, "\<Tab> ")
        call append(11, "}")
		execute ':13d'
		call cursor(11, 5)
    
    endif
endfunction
