* Cria um arquivo ficheiro para o Jaws.
* Digitar o nome do executavel do programa que queira que o Jaws fique
* mudo.
* Autor: Neno
* Em 14/01/2002

escreve "Emudecedor do Jaws"
@loop
chama @pegaExecutavel
escreve "Aguarde"
chama @montaLinha
chama @ligaEdivox
espera 1
chama @escreveNoArquivo
escreve "Deseja outro: "
le r&
se r = "s" desvia @loop
@fim
termina mudo

***************************************************************

@pegaExecutavel
escreve "Digite o nome do execultavel do programa desejado"
le n
se n=""
    escreve "Desistiu"
    desvia @fim
fim se
retorna

***************************************************************

@montaLinha
seja k pos "." n
se k <= 0
    chama @colocaExtensao
senão
    chama @trocaExtensao
fim se
seja l "\winvox\edivox.exe  \jaws37\settings\enu\"
concatena l n
retorna

***************************************************************

@colocaExtensao
seja x ".jcf"
concatena n x
retorna

***************************************************************

@trocaExtensao
copia x n 1 k
concatena x "jcf"
seja n x
retorna

***************************************************************

@ligaEdivox
executa l &
retorna

***************************************************************

@escreveNoArquivo
aciona "f4"
bipa 1
digita "[Options]"
digita "SleepMode=2"
bipa 1
digita ""
digita "[OSM]"
bipa 1
digita "aretSearch=254"
aciona "ctrl+x"
espera 1
retorna
