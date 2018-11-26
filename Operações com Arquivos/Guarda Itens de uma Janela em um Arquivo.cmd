* Guarda itens de janelas em um arquivo
* Autor: Tiago Melo Casal
* Em: 02/06/2004



Abre #1 C:\$GJan.$GJ
MSAA monitora
@loop
    MSAA checa c
    se c = 1
        MSAA nome n
        se a <> n
            escreve n
            seja a n
        fim se

    observa teclado t
    se t = 0 desvia @loop

MSAA fim
termina
