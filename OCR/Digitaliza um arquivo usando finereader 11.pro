*Script de modelo para execução de OCR
*Autores: Antonio e Bernard
*Data: 25/04/2002

*Variáveis genéricas deste script:
*P = Programa OCR utilizado

@inicia
*Atribui a variável P o caminho completo do OCR que será utilizado
seja p "c:\progra~1\abbyyf~1\finecmd.exe"
*busca j p
*se j = ""
*seja p "c:\progra~2\abbyyf~1\finecmd.exe"

*Mensagem de boas vindas
escreve "Script para o finereader 11"
escreve "Nome do arquivo a digitalizar, caminho completo"
le nome
termina mudo

@configOcr
* Não é necessário configurações adicionais, rotina fica em branco
termina mudo

@carregaOcr
executa p &
espera 2
captura ativa n
enquanto n <> "ABBYY FineReader 11 Professional Edition"
captura ativa n
espera 1
bipa 1
fim enquanto
espera 1
aciona "shift+tab"
espera 1
aciona "enter"
captura ativa f
enquanto f <> "Documento sem título - ABBYY FineReader 11 Professional Edition"
captura ativa f
espera 1
bipa 1
fim enquanto
Escreve "Programa carregado"
termina mudo

@primeiraPagina
espera 2
aciona "ctrl+O"
espera 3
digita nome
espera 2
Escreve "Digitalizando"
captura ativa k
enquanto k = "Adicionando a imagem ao documento"
captura ativa k
espera 1
bipa 1
fim enquanto
espera 1
Escreve "Página digitalizada"
termina mudo

@proximaPagina
espera 1
aciona "ctrl+O"
espera 3
digita nome
espera 2
Escreve "Digitalizando"
captura ativa k
enquanto k = "Adicionando a imagem ao documento"
captura ativa k
espera 1
bipa 1
fim enquanto
Escreve "Página digitalizada"
termina mudo

@ultimaPagina
espera 2
aciona "ctrl+a"
espera 2
termina mudo

@salvaArq
espera 1
aciona "shift+f10"
repete i 4
aciona "down"
espera 1
fim repete
espera 1
aciona "enter"
repete y 6
aciona "up"
espera 1
fim repete
espera 1
aciona "enter"
espera 3
digita $n
espera 1
captura ativa c
enquanto c = "Salvando para arquivo"
captura ativa c
espera 1
bipa 1
fim enquanto
aciona "alt+f4"
espera 2
termina mudo

@fechaOcr
espera 1
aciona "ALT+F4"
espera 1
aciona "n"
termina mudo
