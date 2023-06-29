set nocompatible              " be iMproved, required
set encoding=utf-8

" Specify a directory for plugins
" - For Neovim: stdpath('data') . '/plugged'
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.vim/plugged')

" Fuzzyfinder recomendado pelo Thiago do banco de dados
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'

" completa palavras quando aperta a tecla tab
" Plug 'ervandew/supertab'

" Digite gcc pra comentar ou descomentar uma linha, e selecione e digite gc
" pra comentar ou descomentar a seleção
Plug 'vim-scripts/tComment'

Plug 'jiangmiao/auto-pairs'

Plug 'vim-airline/vim-airline'

Plug 'scrooloose/nerdtree'

Plug 'Xuyuanp/nerdtree-git-plugin'

Plug 'jistr/vim-nerdtree-tabs'

" Type :Autopep8 on command mode for automatically format code
" Plug 'tell-k/vim-autopep8'

" Plug 'pangloss/vim-javascript'
" Plug 'mxw/vim-jsx'

" Plug 'tkhren/vim-fake'

" Temas
Plug 'colepeters/spacemacs-theme.vim'
Plug 'lucasprag/simpleblack'
Plug 'drewtempelmeyer/palenight.vim'
Plug 'jordwalke/vim-taste'
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
Plug 'ycm-core/YouCompleteMe'

" Plug 'ajh17/VimCompletesMe'

" Initialize plugin system
call plug#end()


" HABILITA TRUE COLOR
if (has("termguicolors"))
  set termguicolors
endif



"abreviações:
"C
" ab PF printf("\n<esc>A;<esc>hhhhi
" ab /* /* */<ESC>hhi
" ab free free( <esc>A;<esc>hhi
" ab else else<CR>{<CR>
" ab el else
" ab malloc malloc( <esc>A;<esc>hhi
" ab if if( <esc>A<esc>hi
" ab ifndef #ifndef<CR>#define<CR>#endif<ESC>kkA
" ab inc #include< ><ESC>i

" IRB
" ab <% <% %><esc>hhi

" Python
ab PP print(f"<esc>a

" Javascript
ab CL console.log("<esc>A;<esc>hhi


" Java
" ab SOP System.out.println("<esc>$a;<esc>hhi



"Mapeamento de teclado
" map <F10> <ESC>:w<ENTER><ESC>:!make<ENTER>
" map <F12> <ESC>:w<ENTER><ESC>:!make run<ENTER>



" Mapeamento em runtime (usar somente se auto-pairs não estiver instalado)
" inoremap if( if(<space><space>)<ESC>hhi
" inoremap ( ()<ESC>i
" inoremap {<CR> {<CR>}<ESC>ko
" inoremap {<space> { }<ESC>i
" inoremap " ""<ESC>i
" inoremap [ []<ESC>i
" inoremap ' ''<esc>i


set scrolloff=5


" set foldmethod=syntax
" set foldmethod=indent
" set foldmethod=manual
" inoremap <F7> <C-O>za
" nnoremap <F7> za
" onoremap <F7> <C-C>za
" vnoremap <F7> zf


" Copy to system clipboard using visual mode and then pressing ' two times on
" MacBook's only VIM (mvim)
" vmap '' :w !pbcopy <CR><CR>

" Avoid stress when forgetting to use shift with the ; key in execution mode
nnoremap ; :

" map <F9> :make<CR><CR>:cw<CR>

"
" set complete=.,i

"lembra a ultima posicao do cursor no editor 
if has("autocmd")
	au BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$")
		\| exe "normal! g'\"" | endif
endif



" TABS
" nmap <Leader>[ :tabprevious<CR>
" nmap <Leader>] :tabnext<CR>

" colorscheme onedark
colorscheme simpleblack
" colorscheme one
" colorscheme spacemacs-theme
" colorscheme taste
" colorscheme molokai
" colorscheme pablo
" colorscheme PaperColor
" colorscheme taste

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

" Desabilita Realce da linha que está sendo editada
" set nocursorline

" Configurações do YouCompleteMe

" CONFIGURACOES PADRAO YCM
"	Inicia auto-complete ao ter mais de 3 letras
" let g:ycm_min_num_of_chars_for_completion = 3
" let g:ycm_min_num_identifier_candidate_chars = 3
" let g:ycm_enable_diagnostic_highlighting = 0
" "   Desabilita a janela de preview (superior) do YouCompleteMe
set completeopt-=preview
let g:ycm_add_preview_to_completeopt = 0
let g:ycm_max_num_candidates = 10



" OPÇÕES DE FOLD
" set foldmethod=indent
" set foldmethod=syntax
" set foldlevel=1
" set foldnestmax=3
" set nofoldenable


" OPÇÕES DE MENU
set wildmenu " Permite um menu interativo pra completar comandos no vim


" Opções de mouse
set mouse=a

" Impede o sistema de atualizar o texto quando executando alguma macro (desempenho)
" set lazyredraw



" ---------------- Search Settings --------------
" Faz com o que sistema procure por palavras parciais
set incsearch
" Faz com que o sistema procure por coisas ignorando diferenciação entre maiusculas e minusculas
set ignorecase
" Ativa as palavras em highlight quando pesquisadas
set hlsearch

" Chama o fzf (FuzzyFinder) quando aperta CTRL+T, CTRL+F e CTRL+L
inoremap <C-T> <ESC>:tabe<CR>:Files<CR>
map <C-T> <ESC>:tabe<CR>:Files<CR>
inoremap <C-F> <ESC>:Files<CR>
map <C-F> <ESC>:Files<CR>
inoremap <C-L> <ESC>:Lines<CR>
map <C-L> <ESC>:Lines<CR>


" Configurações do vim-javascript
let g:javascript_plugin_flow = 1

let g:jsx_ext_required = 0

" set C indent on
set tabstop=4
set softtabstop=4
set shiftwidth=4
" set noexpandtab
set expandtab
" set noai
" set autoindent
" set nowrap "Sem quebra de linha
" set filetype cindent
"
set smartindent
"
set ruler
" set rnu
set nu
set cursorline

" set cindent
" set autoindent noexpandtab tabstop=4 shiftwidth=4


" Dart configurations
" let dart_style_guide = 4
" let dart_format_on_save = 0


" Unify system clipboard and vim clipboard if in linux
set clipboard=unnamedplus


" Complete HTML tag on pressing CTRL+X
inoremap <C-x> <esc>yyp0t>la/<Esc>t ldtko
nnoremap <C-x> yyp0t>la/<Esc>t ldtko


" Enable Copilot for gitcommit, markdown and yaml files
let g:copilot_filetypes = {
    \ 'gitcommit': v:true,
    \ 'markdown': v:true,
    \ 'yaml': v:true
    \ }

" Disable Copilot for files larger than 100kb
autocmd BufReadPre *
    \ let f=getfsize(expand("<afile>"))
    \ | if f > 100000 || f == -2
    \ | let b:copilot_enabled = v:false
    \ | endif

