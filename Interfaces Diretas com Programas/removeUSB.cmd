*Remove dispositivo USB
escreve "fechando dispositivo removível"
tela minimizada
captura ativa p

executa "RunDll32.exe shell32.dll,Control_RunDLL hotplug.dll" &

@esperadll
    captura ativa t
    se p = t desvia @esperadll

espera 3
aciona "ALT+P"
espera 3
aciona "ENTER"
espera 3
aciona "ALT+F"

termina
