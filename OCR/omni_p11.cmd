*Script de modelo para execução de OCR omnipage11
*Autores: Renato Costa
*Data: 23-04-2002

*Variáveis genéricas deste script:
*P = Programa OCR utilizado
*T = Tempo levado pelo scanner para copiar uma página

@inicia

*Atribui a variável P o caminho completo do OCR que será utilizado

seja p "c:\arquiv~1\scansoft\omnipa~1.0\omnipage.exe"

*Mensagem de boas vindas
escreve "Script para o omnipage 11"
termina mudo

@configOcr

*Atribui a variável T o tempo levado pelo HP 3200 C para copiar uma página
seja T 40
termina mudo

@carregaOcr

executa p &
espera 10
aciona "alt+p"
aciona "p"
aciona "alt+l"
espera 1
digita "text"
aciona "enter"
termina mudo

@primeiraPagina
aciona "Alt+p"
aciona "enter"
espera T
aciona "ESC"
termina mudo

@proximaPagina
janela maximiza "omnipage"
aciona "Alt+p"
aciona "ENTER"
espera 2
aciona "Alt+m"
espera T
aciona "ESC"
termina mudo

@ultimaPagina
aciona "ESC"
termina mudo

@salvaArq
espera 1
aciona "Alt+p"
aciona "enter"
espera 2
aciona "Alt+f"
espera 5
digita N
aciona "enter"
espera 1
espera 1
aciona "enter"
termina mudo

@fechaOcr
espera 2
aciona "alt+f4"
espera 1
aciona "n"
termina mudo
