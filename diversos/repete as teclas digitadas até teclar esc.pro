* Descobre os valores absolutos de cada tecla
* Autor: Antonio e Junior
* Em 9/11/2000

escreve "Aperte as teclas e eu direi seu alfabético ou código"
escreve "Termine com ESCAPE"
outratecla ()

função outraTecla ()
    le t&
    escreve t
    se t <> "#27" outratecla ()
    termina mudo
fim função
