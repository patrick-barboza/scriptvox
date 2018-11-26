* Testa nome da janela, campo e foco
* Autor: Antonio e Junior
* Em 9/11/2000

escreve "iniciando"
@loop
    captura título t
    escreve "titulo " &
    escreve t

    captura foco f
    escreve "foco " &
    escreve f

    escreve "campo " &
    captura campo c
    escreve c

    espera 5

    observa teclado x
    escreve x
    le
    se x = 0 desvia @loop


