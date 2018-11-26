*Script de modelo para execução de OCR
*Autores: Antonio e Bernard
*Data: 25/04/2002

*Variáveis genéricas deste script:
*P = Programa OCR utilizado
*T = Tempo levado pelo scanner para copiar uma página

@inicia

*Atribui a variável P o caminho completo do OCR que será utilizado
seja p "c:\arquiv~1\recogn~1.0\recogn50.exe"

*Mensagem de boas vindas
escreve "Script para o HP SCANJET IIP com o OCR RECOGNITA 5.0 (em inglês)"
termina mudo

@configOcr

*Atribui a variável T o tempo levado pelo scanner para copiar uma página
seja T 20
termina mudo

@carregaOcr

executa p &
espera 15
termina mudo

@primeiraPagina

espera 1
aciona "F9"
espera T
termina mudo

@proximaPagina

espera 1
aciona "ENTER"
espera T
termina mudo

@ultimaPagina

espera 1
aciona "TAB"
aciona "ENTER"
espera 2
termina mudo

@salvaArq

espera 1
aciona "ALT+F"
aciona "E"
espera 2
digita N
aciona "TAB"
aciona "HOME"
aciona "ENTER"
espera 10
termina mudo

@fechaOcr

espera 1
aciona "ALT+F"
aciona "X"
aciona "N"
termina mudo
