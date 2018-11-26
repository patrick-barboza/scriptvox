* Script que compila programas Pascal, Delphi e Free Pascal, usando o
* Free Pascal Compiler
* Autor: Tiago Melo Casal
* Em: 27/03/2003



Seja r "C:\ResltPPC.$$$"
Seja c "Command /c "
Seja b "C:\ComplPPC.bat"

Escreve "Digite o nome do arquivo a compilar pelo Free Pascal Compiler"
Lê a
Se a="" Escreve "Desistiu. Tchau."
Se a="" Termina Mudo

Remove r &
Remove b &
Abre #1 b &
Escreve #1 "Command /c C:\SnapShot\Win32\PPC386.exe -TWin32 -Rintel " &
Escreve #1 "-OG -O1 -Op3 -Sgicmh2pod -viwnh -l -FuC:\SnapShot\Win32 " &
Escreve #1 a &
Escreve #1 " > C:\ResltPPC.$$$"
Fecha #1
Concatena c b
Executa c
Executa "C:\Winvox\Edivox.exe C:\ResltPPC.$$$" &
Espera 2
Aciona "Ctrl+PageUp"
Aciona "F9"
Digita "FT" &
Termina Mudo
