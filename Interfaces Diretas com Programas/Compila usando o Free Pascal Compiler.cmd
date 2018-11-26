* Script que compila programas Pascal, Delphi e Free Pascal, usando o
* Free Pascal Compiler
* Autor: Tiago Melo Casal
* Em: 27/03/2003



Seja r "C:\ResltSs.$$$"
Seja S "Command /c C:\SnapShot\Win32\PPC386.exe -TWin32 -Rintel -OG -O1 -Op3 -Sgicmh2pod -FuC:\SnapShot\Win32 "

Escreve "Digite o nome do arquivo a compilar pelo Free Pascal Compiler"
Lê a
Se a="" Escreve "Desistiu. Tchau."
Se a="" Termina Mudo

Remove r &
Concatena s a
Concatena s " > C:\ResltSs.$$$"
Executa s
Executa "C:\Winvox\Edivox.exe C:\ResltSs.$$$" &
Espera 2
Aciona "Ctrl+PageUp"
Aciona "F9"
Digita "FT" &
Termina Mudo
