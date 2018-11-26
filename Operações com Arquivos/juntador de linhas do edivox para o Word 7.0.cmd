* Programa regenerador de linhas grandes do Edivox para o Word
* Autor: Antonio Borges
* Em 13/8/2001

escreve "Regenerador de linhas grandes"
escreve "Informe o nome do arquivo original"
le o
se o = ""
    escreve "Desistiu"
    desvia @fim
fim se
escreve "Informe o nome do arquivo destino (diferente do original)"
le d
se d = ""
    escreve "Desistiu"
    desvia @fim
fim se

abre #1 o
remove d &
abre #2 d &

seja a ""
seja n 0
@loop
    le #1 l
    checa s
    se s <> 0 desvia @acabou

    se n <> 0 chama @juntaLinhas
    se l <> "" escreve #2 l &

    seja a l
    soma n 1
    desvia @loop

@acabou
    escreve #2
    fecha #1
    fecha #2
    escreve "linhas processadas: " &
    escreve n
@fim
    termina

*** rotina de junção de linhas ***

@juntaLinhas
    se n = 1 retorna

    se a = "" desvia @pulaLinha
    se l = "" desvia @pulaLinha

    copia x l 1 1
    se x = " " desvia @pulaLinha

    escreve #2 " " &
    retorna

@pulaLinha
    escreve #2
    retorna
