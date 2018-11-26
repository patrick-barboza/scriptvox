escreve "Qual o diretório das músicas a tocar?"
Lê d
dir troca d
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
