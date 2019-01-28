
"set C indent on
set tabstop=4
set softtabstop=4
set shiftwidth=4
set noexpandtab
"set noai
" set autoindent
"set nowrap "Sem quebra de linha
"set filetype cindent
set smartindent
set ruler
"set cindent
" set autoindent noexpandtab tabstop=4 shiftwidth=4


set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
" Instala coisas como plugins quando escreve :PluginInstall
Plugin 'VundleVim/Vundle.vim'

" Esse plugin buga a indentação de arquivos do tipo RUBY
" Plugin 'https://github.com/vim-ruby/vim-ruby'

" completa palavras quando aperta a tecla tab
Plugin 'https://github.com/ervandew/supertab'

" Deixa uma barrinha bonitinha ali
Plugin 'https://github.com/vim-airline/vim-airline'

" se escrever :rename nomeNovo    isso renomeia o arquivo que estiver pra o
" novo nome
Plugin 'https://github.com/danro/rename.vim'

" Digite gcc pra comentar ou descomentar uma linha, e selecione e digite gc
" pra comentar ou descomentar a seleção
Plugin 'https://github.com/vim-scripts/tComment'

" Syntax Highlight do Vala pro VIM
Plugin 'arrufat/vala.vim'

" Cria pares automágicos pras cosas que digitar... se digitar (, ele escreve ()
Plugin 'https://github.com/jiangmiao/auto-pairs'

" Pro RUBY  (completa os if e def automagicamente)
Plugin 'https://github.com/tpope/vim-endwise'

" O épico, NERDTree
Plugin 'scrooloose/nerdtree'

" Plugin pra integração do NERDTree com o github
Plugin 'https://github.com/Xuyuanp/nerdtree-git-plugin'

" Plugin pra adicionar tabs no NERDTree
Plugin 'https://github.com/jistr/vim-nerdtree-tabs'

" Cor do ATOM aqui
Plugin 'https://github.com/joshdick/onedark.vim'

" Cor bonitinha pro vim
Plugin 'NLKNguyen/papercolor-theme'

" Cor do ATOM (inclusive claro) aqui
Plugin 'https://github.com/rakr/vim-one'


" Plugin pra gerenciar as TODO lists
Plugin 'irrationalistic/vim-tasks'


" Plugin de suporte a indentação (desabilitado ao final do .vimrc) e syntax
" highlight
Plugin 'https://github.com/leafgarland/typescript-vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
" Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
" Plugin 'L9'
" Git plugin not hosted on GitHub
""Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
""Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
""Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Install L9 and avoid a Naming conflict if you've already installed a
" different version somewhere else.
" Plugin 'ascenator/L9', {'name': 'newL9'}

" All of your Plugins must be added before the following line
call vundle#end()            " required
" filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line





"abreviações:
"C
ab C_INCLUDES #include<stdio.h><CR>#include<stdlib.h><CR>#include<string.h><CR>#include<unistd.h><CR><CR>#ifndef bool<CR>#define bool char<CR>#endif<CR><CR>#ifndef true<CR>#define true 1<CR>#endif<CR><CR>#ifndef false<CR>#define false 0<CR>#endif<CR><CR>/*<CR>  @author João Vitor Antoniassi Segantin<CR>@github https://github.com/joaovitor123jv<CR>*/<ESC>0xi<CR><CR><ESC>Ga


ab PF printf("\n<esc>A;<esc>hhhhi
ab STDIO #include<stdio.h>
""ab /* /* */<ESC>hhi
""ab free free( <esc>A;<esc>hhi
""ab else else<CR>{<CR>
""ab el else
""ab malloc malloc( <esc>A;<esc>hhi
"ab if if( <esc>A<esc>hi

ab ifndef #ifndef<CR>#define<CR>#endif<ESC>kkA
""ab inc #include< ><ESC>i

"" IRB
ab <% <% %><esc>hhi


"Java
ab SOP System.out.println("<esc>$a;<esc>hhi

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

" inoremap <F5> <ESC>gT
" inoremap <F6> <ESC>gt



"Mapeamento em runtime
""inoremap if( if(<space><space>)<ESC>hhi
""inoremap ( ()<ESC>i
""inoremap {<CR> {<CR>}<ESC>ko
""inoremap {<space> { }<ESC>i
""inoremap " ""<ESC>i
""inoremap [ []<ESC>i
""inoremap ' ''<esc>i


set scrolloff=8



""set foldmethod=syntax
"set foldmethod=indent
set foldmethod=manual
inoremap <F7> <C-O>za
nnoremap <F7> za
onoremap <F7> <C-C>za
vnoremap <F7> zf

nnoremap ; :

map <F9> :make<CR><CR>:cw<CR>


"
""set complete=.,i

"lembra a ultima posicao do cursor no editor 
if has("autocmd")
	au BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$")
		\| exe "normal! g'\"" | endif
endif




""Configurações recomendadas do Syntastic 
"set statusline+=%#warningmsg#
"set statusline+=%{SyntasticStatuslineFlag()}
"set statusline+=%*

"let g:syntastic_always_populate_loc_list = 1
"let g:syntastic_auto_loc_list = 1
"let g:syntastic_check_on_open = 1
"let g:syntastic_check_on_wq = 0


" Isso permite que as tabs do NERDTree apareçam automagicamente
" let g:nerdtree_tabs_open_on_console_startup=1



" Configuração pra que as tabs do NERDTree sejam ativadas/desativadas
" escrevendo "\t" no terminal
map <Leader>t <plug>NERDTreeTabsToggle<CR>


" TABS
inoremap <C-T> <ESC>:tabe<CR>:E<CR>i
map <C-T> <ESC>:tabe<CR>:E<CR>i
nmap <Leader>h :tabprevious<CR>
nmap <Leader>l :tabnext<CR>

" colorscheme onedark
set background=light
" set background=dark
" colorscheme PaperColor
" colorscheme one

" autocmd FileType * set noexpandtab
syntax on

""colorscheme dracula
""colorscheme molokai
""colorscheme torte
" colorscheme delek

" set guifont=Ubuntu\ Mono\ 12
" set guifont=Roboto\ Mono\ \Regular\ 10

" Inicia o NERDTree assim que o vim inicializa
"autocmd vimenter * NERDTree
map <C-b> :NERDTreeToggle<CR>

"  Isso permite que o NERDTree possa aparecer quando passar um diretorio como argumento
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | endif

let g:typescript_indent_disable = 1



" " configurações de GUI
" set guioptions-=m  "remove menu
" set guioptions-=T  "remove toolbar
" set guioptions-=r  "remove right-hand scroll bar
" set guioptions-=L  "remove left-hand scroll bar

" Realça a linha que está sendo editada
" set cursorline



" OPÇÕES DE FOLD
set foldmethod=indent
set foldnestmax=3
set nofoldenable


" OPÇÕES DE MENU
set wildmenu " Permite um menu interativo pra completar comandos no vim


" Opções de mouse
set mouse=a

" Impede o sistema de atualizar o texto quando executando alguma macro (desempenho)
set lazyredraw

" Faz com que o sistema procure por coisas ignorando diferenciação entre maiusculas e minusculas
set ignorecase

" Faz com o que sistema procure por palavras parciais
set incsearch
