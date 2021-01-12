set nocompatible              " be iMproved, required

" Specify a directory for plugins
" - For Neovim: stdpath('data') . '/plugged'
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.vim/plugged')

" Fuzzyfinder recomendado pelo Thiago do banco de dados
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'

" completa palavras quando aperta a tecla tab
Plug 'ervandew/supertab'

" Digite gcc pra comentar ou descomentar uma linha, e selecione e digite gc
" pra comentar ou descomentar a seleção
Plug 'vim-scripts/tComment'

Plug 'jiangmiao/auto-pairs'

Plug 'vim-airline/vim-airline'

Plug 'scrooloose/nerdtree'

Plug 'Xuyuanp/nerdtree-git-plugin'

Plug 'jistr/vim-nerdtree-tabs'


Plug 'pangloss/vim-javascript'
Plug 'mxw/vim-jsx'

" Plug 'tkhren/vim-fake'


" Temas
Plug 'colepeters/spacemacs-theme.vim'
Plug 'lucasprag/simpleblack'
Plug 'drewtempelmeyer/palenight.vim'
Plug 'jordwalke/vim-taste'
Plug 'fxn/vim-monochrome'
Plug 'joshdick/onedark.vim'
Plug 'tomasr/molokai'
Plug 'NLKNguyen/papercolor-theme'
Plug 'rakr/vim-one'
Plug 'crusoexia/vim-monokai'


" Plugin de suporte ao dart pro vim
" Plug 'dart-lang/dart-vim-plugin'

" Plugin de suporte a elixir pro vim
" Plug 'elixir-editors/vim-elixir'

" Syntax Highlight do Vala pro VIM
" Plugin 'arrufat/vala.vim'

" YouCompleteMe - Auto-complete in vim
" Plug 'Valloric/YouCompleteMe'

" Plug 'ajh17/VimCompletesMe'

" Initialize plugin system
call plug#end()





" HABILITA TRUE COLOR
" if (has("termguicolors"))
"   set termguicolors
" endif



"abreviações:
"C
" ab C_INCLUDES #include<stdio.h><CR>#include<stdlib.h><CR>#include<string.h><CR>#include<unistd.h><CR><CR>#ifndef bool<CR>#define bool char<CR>#endif<CR><CR>#ifndef true<CR>#define true 1<CR>#endif<CR><CR>#ifndef false<CR>#define false 0<CR>#endif<CR><CR>/*<CR>  @author João Vitor Antoniassi Segantin<CR>@github https://github.com/joaovitor123jv<CR>*/<ESC>0xi<CR><CR><ESC>Ga


" ab PF printf("\n<esc>A;<esc>hhhhi
" ab STDIO #include<stdio.h>
""ab /* /* */<ESC>hhi
""ab free free( <esc>A;<esc>hhi
""ab else else<CR>{<CR>
""ab el else
""ab malloc malloc( <esc>A;<esc>hhi
"ab if if( <esc>A<esc>hi

" ab ifndef #ifndef<CR>#define<CR>#endif<ESC>kkA
""ab inc #include< ><ESC>i

"" IRB
" ab <% <% %><esc>hhi


"" Javascript
ab CL console.log("<esc>A;<esc>hhi
" inoremap ,class <esc>:read ~/.vim/snippets/js/react_class.js<cr><esc>wcw
" inoremap ,imp <esc>:read ~/.vim/snippets/js/import.js<cr>2whi
" inoremap ,map <esc>:read ~/.vim/snippets/js/map.js<cr>kgJjhcw


"Java
" ab SOP System.out.println("<esc>$a;<esc>hhi

" ab SWING import javax.swing.J
""ab AWT import java.awt.
""ab EVENT import java.awt.event.
""ab UTIL import java.util.
""ab IOEXCEPTION import java.io.IOException;
""ab SCANNER import java.util.Scanner;

""ab IO import java.io.FileReader;<CR>import java.io.FileWriter;<CR>import java.io.IOException; //LEMBRA DE COLOCAR throws IOException

"ativa as palavras em highlight quando pesquisadas
set hlsearch

"Mapeamento de teclado
" map <F10> <ESC>:w<ENTER><ESC>:!make<ENTER>
" map <F12> <ESC>:w<ENTER><ESC>:!make run<ENTER>

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


set scrolloff=5



""set foldmethod=syntax
"set foldmethod=indent
" set foldmethod=manual
" inoremap <F7> <C-O>za
" nnoremap <F7> za
" onoremap <F7> <C-C>za
" vnoremap <F7> zf


" Copy to system clipboard using visual mode and then pressing ' two times on
" MacBook's VIM (mvim)
vmap '' :w !pbcopy <CR><CR>


nnoremap ; :

" map <F9> :make<CR><CR>:cw<CR>


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
" escrevendo "\b" no terminal
" map <Leader>b <plug>NERDTreeTabsToggle<CR>


" TABS
" inoremap <C-T> <ESC>:tabe<CR>:E<CR>i
" map <C-T> <ESC>:tabe<CR>:E<CR>i
nmap <Leader>[ :tabprevious<CR>
nmap <Leader>] :tabnext<CR>

" colorscheme onedark
" set background=dark
" colorscheme PaperColor
" colorscheme simpleblack
" colorscheme one
" colorscheme spacemacs-theme
" colorscheme taste
" colorscheme molokai

"
colorscheme palenight

" colorscheme taste

" colorscheme monochrome

set background=dark
" set background=light

" autocmd FileType * set noexpandtab
syntax on



" Inicia o NERDTree assim que o vim inicializa
" autocmd vimenter * NERDTree
map <C-b> :NERDTreeToggle<CR>
" nmap <Leader>b :NERDTreeToggle<CR>

"  Isso permite que o NERDTree possa aparecer quando passar um diretorio como argumento
autocmd StdinReadPre * let s:std_in=1
" autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | endif

" let g:typescript_indent_disable = 1
" let g:javascript_indent_disable = 1



" " configurações de GUI (Agora no .gvimrc)
" set guioptions-=m  "remove menu
" set guioptions-=T  "remove toolbar
set guioptions-=r  "remove right-hand scroll bar
set guioptions-=L  "remove left-hand scroll bar

" Desabilita Realce da linha que está sendo editada
" set nocursorline

" Configurações do YouCompleteMe

" CONFIGURACOES PADRAO YCM
"	Inicia auto-complete ao ter mais de 3 letras
" let g:ycm_min_num_of_chars_for_completion = 3
" let g:ycm_min_num_identifier_candidate_chars = 3
" let g:ycm_enable_diagnostic_highlighting = 0
" "   Desabilita a janela de preview (superior) do YouCompleteMe
" set completeopt-=preview
" let g:ycm_add_preview_to_completeopt = 0

" Define a quantidade de candidatos que aparece na janelinha do YCM
" let g:ycm_max_num_candidates = 10


" OPÇÕES DE FOLD
" set foldmethod=indent
" set foldnestmax=3
" set nofoldenable


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


" Configurações do vim-javascript
let g:javascript_plugin_flow = 1

let g:jsx_ext_required = 0

"set C indent on
set tabstop=2
set softtabstop=2
set shiftwidth=2
" set noexpandtab
set expandtab
"set noai
" set autoindent
"set nowrap "Sem quebra de linha
"set filetype cindent
"
set smartindent
"
set ruler
set rnu
set cursorline

" set cindent
" set autoindent noexpandtab tabstop=4 shiftwidth=4

" Permite busca recursiva por arquivos no diretório
" set path+=**


" Dart configurations
" let dart_style_guide = 4
" let dart_format_on_save = 0

" let g:table_mode_corder='|'

" Remove caracteres das barras de divisão de janelas '|' por ' '
" set fillchars+=vert:\ 
"
" " Deixa a cor da barra de divisão de janelas acinzentada
" hi VertSplit ctermfg=237
" hi VertSplit ctermbg=237
"
" " Altera a cor da tabbar
" hi TabLineFill ctermfg=237 ctermbg=237
" hi TabLine ctermfg=252 ctermbg=237
" hi TabLineSel ctermfg=255 ctermbg=black
"
