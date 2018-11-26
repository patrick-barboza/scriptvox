**********************************************
* Script para compactar arquivos isoladamente
* Autor: Glauco Férius
* Em 22/09/2008
**********************************************

escreve "Compactando cada arquivo de uma lista com rar32"
escreve "Deseja instruções?"
le k&
se k = "#27" termina mudo
se k = "s" desvia @instruções
se k <> "s" desvia @inicio

@instruções
escreve "Para compactar uma lista de arquivos, crie um"
escreve "arquivo com o nome de cada arquivo a compactar."
escreve "Coloque um ponto isolado na última linha."
escreve "A lista e os arquivos devem estar na mesma pasta."
escreve "Deseja continuar?"
le o&
se o = "#27" termina mudo
se o = "s" desvia @inicio
se o = "n" termina mudo

@inicio
escreve "Digite o nome do arquivo com a lista de nomes"
le a
busca p DIR
se a = ""
termina mudo
fim se
concatena p "\"
concatena p a
busca x p
se x = ""
     escreve "Arquivo não existe"
desvia @inicio
fim se

* Abrindo o arqivo com a lista de textos

    abre #2 p

@leArq
busca d DIR
    le #2 l
    se l = "." desvia @arqFim

seja p "cmd /c rar32 a "
concatena e l

seja k pos "." l
se k <> 0
seja k k-1
copia t l 1 k
concatena t ".rar"
senão
concatena t l
concatena t ".rar"
fim se

concatena p t
concatena p " "
concatena p e
executa p
bipa
espera 2
seja e ""
seja t ""
chama @leArq

@arqFim
    fecha #2
escreve "Fim das compactações"
termina mudo
