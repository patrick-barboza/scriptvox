* script para formatar disquete (versão simplificada)

escreve "coloque o disquete a formatar e tecle enter"
le

* executa sistema de formatação do windows
executa "rundll32 shell32.dll,SHFormatDrive" &
espera 1

* seleciona formatação rápida
aciona "alt+r"
* manda iniciar
aciona "alt+i"
espera 12

* sai do programa
aciona "esc"
aciona "esc"
