* Salva uma planilha do excel em formato texto com tabulações
* Esse script foi feito baseando-se no Microsoft Excel 97
* Autor: Tiago Melo Casal
* Em: 27/02/2002



escreve "Planilha excel / txt"
escreve
@novaTentativa
escreve "Digite caminho e nome do arquivo de entrada?"
lê e

se e=""
    escreve "Desistiu"
    desvia @fim
fim se

escreve "Digite caminho e nome do arquivo de saída?"
lê s

se s=""
    escreve "Desistiu"
    desvia @fim
fim se

seja x "excel "
concatena x e
executa x &
@repete
chama @esperaUmSegundo
captura ativa a
se a=*"Microsoft Excel"
desvia @continua
senão
desvia @repete
fim se

@continua
aciona "alt+a"
chama @esperaUmSegundo
aciona "c"
chama @esperaUmSegundo
digita s &
chama @esperaUmSegundo
aciona "tab"
aciona "home"
aciona "t"
aciona "t"
aciona "alt+s"
chama @esperaUmSegundo
aciona " "
chama @esperaUmSegundo
aciona "alt+f4"
chama @esperaUmSegundo
aciona "alt+n"


tela normal
escreve "Ação concluída"
escreve "Deseja salvar outra planilha em txt?"
@dsot
lê a &
se a="s" desvia @novaTentativa
se a="#0#66" chama @f8
se a="#0#66" desvia @dsot
se a="#0#101" chama @Controlf8
se a="#0#101" desvia @dsot
@fim
termina mudo


@esperaUmSegundo
bipa 1
espera 1
retorna


@f8
seja s hora
copia h s 1 2
concatena h " horas e "
copia m s 4 5
concatena m "minutos"
concatena h m
escreve h
retorna

@Controlf8
seja d dia
seja t data
concatena d "  "
copia r t 1 2
concatena r " de "
concatena d r
copia m t 4 5
substitui m "01" "janeiro de "
substitui m "02" "fevereiro de "
substitui m "03" "março de "
substitui m "04" "abril de "
substitui m "05" "maio de "
substitui m "06" "junho de "
substitui m "07" "julho de "
substitui m "08" "agosto de "
substitui m "09" "setembro de "
substitui m "10" "outubro de "
substitui m "11" "novembro de "
substitui m "12" "dezembro de "
concatena d m
copia y t 7 10
concatena d y
escreve d
retorna
