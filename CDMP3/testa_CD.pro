*Informações de um CD
*A listagem completa MCI é encontrada no HELP do Turbo Pascal ou Delphi

@inicia

t := ""
MCI t "Status CDAUDIO length"

se t <> ""
    ESCREVE "Duração total do CD"
    Escreve t
    MCI n "Status CDAUDIO number of tracks"
    escreve ""
    ESCREVE "Número de trilhas gravadas neste CD"
    ESCREVE n
senão
    escreve "O CD é virgem ou a unidade de CD está vazia"
fim se
termina mudo
