syntax on



""colorscheme dracula
""colorscheme molokai
""colorscheme torte

set guifont=Ubuntu\ Mono\ 10

"set C indent on
"set indent on
set tabstop=4
set softtabstop=4
set shiftwidth=4
set noexpandtab
set noai
set autoindent
"set nowrap "Sem quebra de linha
"set filetype cindent
set smartindent
set ruler
"set cindent

"abreviações:
"C
ab PF printf("\n<esc>A;<esc>hhhhi
ab STDIO #include<stdio.h>
ab /* /* */<ESC>hhi
ab free free( <esc>A;<esc>hhi
""ab else else<CR>{<CR>
ab else else<CR>{<CR><ESC>ddkA
ab malloc malloc( <esc>A;<esc>hhi
ab if if( <esc>A<esc>hi


"Html
""ab <html> <html><cr></html><esc>ko
""ab <body> <body><cr></body><esc>ko
""ab <title> <title><cr></title><esc>ko
""ab <canvas> <canvas><cr></canvas><esc>ko
""ab <h1> <h1><cr></h1><esc>ko
""ab <h2> <h2><cr></h2><esc>ko
""ab <h3> <h3><cr></h3><esc>ko
""ab <h4> <h4><cr></h4><esc>ko
""ab <h5> <h5><cr></h5><esc>ko
""ab <div> <div><cr></div><esc>ko
""ab <th> <th></th><esc>hhhhi
""ab <tr> <tr><enter></tr><esc>O<tab>
""ab <td> <td></td><esc>hhhhi
""ab <thead> <thead><ebter></thead><esc>O<tab>



"Java
""ab SOP System.out.println("<esc>$a;<esc>hhi

""ab SWING import javax.swing.J
""ab AWT import java.awt.
""ab EVENT import java.awt.event.
""ab UTIL import java.util.
""ab IOEXCEPTION import java.io.IOException;
""ab SCANNER import java.util.Scanner;

""ab IO import java.io.FileReader;<CR>import java.io.FileWriter;<CR>import java.io.IOException; //LEMBRA DE COLOCAR throws IOException

"ativa as palavras em highlight quando pesquisadas
set hlsearch

"Mapeamento de teclado
map <F10> <ESC>:w<ENTER><ESC>:!make<ENTER>
map <F12> <ESC>:w<ENTER><ESC>:!make run<ENTER>

inoremap <F5> <ESC>gTi
inoremap <F6> <ESC>gti
inoremap <C-T> <ESC>:tabe<CR>:E<CR>i
inoremap <S-F5> <ESC>:tabmove 0<CR>i
inoremap <S-F6> <ESC>:tabmove<CR>i

map <F5> <ESC>gTi
map <F6> <ESC>gti
map <C-T> <ESC>:tabe<CR>:E<CR>i
map <S-F5> <ESC>:tabmove 0<CR>i
map <S-F6> <ESC>:tabmove<CR>i



"Mapeamento em runtime
""inoremap if( if(<space><space>)<ESC>hhi
inoremap ( ()<ESC>i
inoremap {<CR> {<CR>}<ESC>ko
inoremap {<space> { }<ESC>i
inoremap " ""<ESC>i
inoremap [ []<ESC>i
inoremap ' ''<esc>i

