*Script de modelo para execução de OCR
*Autores: Antonio e Bernard
*Data: 27/02/2002

*Variáveis genéricas deste script:
*P = Programa OCR utilizado
*T = Tempo levado pelo scanner para copiar uma página

@inicia

*Atribui a variável P o caminho completo do OCR que será utilizado
seja p "c:\recogn30\recogn.exe"

*Mensagem de boas vindas
escreve "Script para o HP SCANJET IIP com o OCR RECOGNITA 3.0 (em inglês)"
termina mudo

@configOcr

*Atribui a variável T o tempo levado pelo scanner para copiar uma página
seja T 15
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
aciona "T"
espera 2
digita N
aciona "ENTER"
espera 10
termina mudo

@fechaOcr

espera 1
aciona "ALT+F"
aciona "X"
aciona "N"
termina mudo
