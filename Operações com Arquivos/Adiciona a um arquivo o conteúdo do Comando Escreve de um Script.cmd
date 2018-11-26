* Adiciona em um arquivo o conteúdo do comando escreve de um Script
* Autor: Tiago Melo Casal
* Em: 07/09 /2002



escreve "Digite o nome do arquivo de entrada"
lê e
abre #1 e
escreve "Digite o nome do arquivo de saída"
lê s
abre #2 s &

@Lê
lê #1 l
checa c
se c <> 0
fecha #1
fecha #2
escreve "Fim"
termina mudo
fim se
se l =* "escreve" desvia @RetiraEscreve
desvia @Lê

@RetiraEscreve
seja k pos "escreve" l
soma k 1
substitui l "escreve mudo " "
substitui l "escreve " "
substitui l "escreve" "
substitui l " &" "
substitui l "&" "
seja m tamanho l
se m <= "1" desvia @Lê
subtrai m 1
copia n l k m
escreve #2 n
desvia @Lê
