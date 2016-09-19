syntax on
"set C indent on
"set indent on
set tabstop=4
set softtabstop=4
set shiftwidth=4
set noexpandtab
set noai
set autoindent
"set filetype cindent
set smartindent
set ruler
"set cindent

"abreviações:
ab SOP System.out.println("
ab PF printf("
ab STDIO #include<stdio.h>

ab SWING import javax.swing.J
ab AWT import java.awt.
ab EVENT import java.awt.event.
ab UTIL import java.util.
ab IOEXCEPTION import java.io.IOException;
ab SCANNER import java.util.Scanner;

ab CABECALHO_JAVA import javax.swing.JPanel;<CR>import javax.swing.JButton;<CR>import javax.swing.JTextField;<CR>import javax.swing.JMenu;<CR>import java.awt.Container;<CR><CR>public class NOME_DA_CLASSE<CR>{<CR>public static void main(String args[])<CR>{<CR><CR>}<CR>}

ab IO import java.io.FileReader;<CR>import java.io.FileWriter;<CR>import java.io.IOException; //LEMBRA DE COLOCAR throws IOException

"ativa as palavras em highlight quando pesquisadas
set hlsearch

"Mapeamento de teclado
map <F11> <ESC>:w<ENTER><ESC>:!make<ENTER>
map <F12> <ESC>:w<ENTER><ESC>:!make run<ENTER>
