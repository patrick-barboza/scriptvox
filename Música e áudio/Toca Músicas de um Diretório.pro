escreve "Qual o diretório das músicas a tocar?"
Lê d
busca x dir d
se x = "" Termina "Diretório não achado. Saindo."
dir TROCA d

escreve "Qual a máscara das músicas a tocar?"
Lê m
busca b m
@loop
    se b = "" desvia @fimDosArquivos
    escreve Mudo b
    Toca b
    busca b PROXIMO
    desvia @loop

@fimDosArquivos
Termina
