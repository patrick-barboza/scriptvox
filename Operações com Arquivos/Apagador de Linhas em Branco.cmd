* Script que remove linhas em branco de um arquivo
* Autor: Tiago Melo Casal
* Em: 19/02/2002
* Atualizado em: 15/03/2004



escreve "Apagador de linhas em branco"
bipa
@opção
escreve
escreve "Qual a opção? " &
@opçãoMudo
lê o &
se o="a" chama @abreArquivos
se o="a" desvia @opção
se o="m" chama @abreArquivos
se o="m" desvia @opção
se o="u" chama @abreArquivos
se o="u" desvia @opção
se o="#27"
bipa
bipa
escreve "Fim"
termina mudo
fim se
se o="#0#66" chama @f8
se o="#0#66" desvia @opçãoMudo
se o="#0#101" chama @Controlf8
se o="#0#101" desvia @opçãoMudo
se o="#0#59" desvia @f1
se o="#13" desvia @opção
se o="#0#67" Desvia @Menu
se o="#0#72" Desvia @Menu
se o="#0#80" Desvia @Menu
escreve "Opção inválida."
escreve "Aperte F1 para ajuda."
desvia @opção
@Menu
Tela Limpa
Menu Cria 1 1 59 3
Menu Adiciona "a - Remove todas as linhas em branco"
Menu Adiciona "m - Substitui mais de uma linha em branco, pela sua metade"
Menu Adiciona "u - Substitui várias linhas em branco, por uma só"
menu Executa x y z
Menu Termina
Seja o y
se o="a" chama @abreArquivos
se o="a" desvia @opção
se o="m" chama @abreArquivos
se o="m" desvia @opção
se o="u" chama @abreArquivos
se o="u" desvia @opção
Se o="Enter" Desvia @Enter
Se o="Esc" Desvia @Opção
Desvia @Menu
@Enter
Seja o x
se o="1" Seja o "a"
se o="a" chama @abreArquivos
se o="a" desvia @opção
se o="2" Seja o "b"
se o="b" chama @abreArquivos
se o="b" desvia @opção
se o="3" Seja o "c"
se o="c" chama @abreArquivos
se o="c" desvia @opção
Desvia @Menu
@f1
escreve "As opções são:"
escreve
escreve "a - Remove todas as linhas em branco"
escreve "m - Substitui mais de uma linha em branco, pela sua metade"
escreve "u - Substitui várias linhas em branco, por uma só"
escreve "esc - Fim"
escreve
desvia @opção

@abreArquivos
Tela Limpa
escreve "Informe o nome do arquivo original"
lê a
se a="" retorna
escreve "Informe o nome do arquivo destino. Enter, mantêm o mesmo nome:"
Escreve a
lê b
se b="" Seja b a
Abre #1 a
@QuantasLinhas
    lê #1 l
    checa c
    se c <> 0 Fecha #1
Se c=0 Soma z 1
Se c=0 Desvia @QuantasLinhas
abre #1 a
Se Não a=b
remove b &
abre #2 b &
Senão
Se a=b
Remove "C:\$$$.$$$" &
Abre #2 "C:\$$$.$$$" &
Fim Se
seja n 0
Seja x 0
Seja y 0
se o="a" Chama @opçãoA
se o="m" Chama @opçãoM
se o="u" Chama @opçãoU


@opçãoA
se x>="500" bipa 1
se x>="500" seja x 0
Observa Teclado t
Se t <> 0
Lê &
Escreve y &
Escreve " de " &
Escreve z &
Escreve " Linhas"
Fim Se
lê #1 l
checa c
se c <> 0 desvia @fim
Soma x 1
Soma y 1
se l <> "" escreve #2 l
se l <> "" desvia @opçãoA
soma n 1
desvia @opçãoA


@opçãoM
seja e 0
@maisUm1
se x>="500" bipa 1
se x>="500" seja x 0
Observa Teclado t
Se t <> 0
Lê &
Escreve y &
Escreve " de " &
Escreve z &
Escreve " Linhas"
Fim Se
lê #1 l
checa c
se c <> 0 desvia @fim
Soma x 1
Soma y 1
@olhar1
se l <> "" escreve #2 l
se l <> "" desvia @maisUm1
@olhar2
se l="" soma e 1
se e="1" desvia @igual1
se e > "1" seja f e
se e > "1" seja g e
se e > "1" divide f 2
se e > "1" multiplica f 2
se f = g seja h "0"
se f <> g seja h "1"
se e > "1" divide e 2
repete r e
escreve #2
fim repete
escreve #2 l
soma n e
se h="0"
desvia @opçãoM
senão
soma n h
desvia @opçãoM
fim se

@igual1
lê #1 l
checa c
se c <> 0 desvia @fim
se l <> "" subtrai e 1
se l <> "" desvia @olhar1
@encontrei
soma e 1
lê #1 l
checa c
se c <> 0 desvia @fim
se l=""
desvia @encontrei
senão
desvia @olhar2
fim se


@opçãoU
seja e 0
se x>="500" bipa 1
se x>="500" seja x 0
Observa Teclado t
Se t <> 0
Lê &
Escreve y &
Escreve " de " &
Escreve z &
Escreve " Linhas"
Fim Se
lê #1 l
checa c
se c <> 0 desvia @fim
Soma x 1
Soma y 1
se l <> "" escreve #2 l
se l <> "" desvia @opçãoU
@maisUm2
soma e 1
lê #1 l
checa c
se c <> 0 desvia @fim
se l="" desvia @maisUm2
se e > "1"
subtrai e 1
escreve #2
escreve #2 l
soma n e
senão
escreve #2
escreve #2 l
fim se
desvia @opçãoU


@fim
    fecha #1
    fecha #2
Se a=b Remove a &
Se a=b Renomeia "C:\$$$.$$$" b
escreve "Número de linhas removidas: " &
escreve n
tela limpa
escreve mudo "Apagador de linhas em branco"
bipa
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
copia a t 7 10
concatena d a
escreve d
retorna
