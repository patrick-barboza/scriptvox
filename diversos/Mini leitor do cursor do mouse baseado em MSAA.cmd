* Mini leitor do cursor do mouse baseado em MSAA
* Autor: Antonio Borges
* Em 19/10/2003

@loop
    le mouse tela x y
    MSAA captura x y
    MSAA nome n
    MSAA valor v

    se a <> n
        escreve n
        seja a n
    fim se

    observa teclado t
    se t = 0 desvia @loop

termina



