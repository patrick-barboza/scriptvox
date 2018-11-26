* Desliga o Windows na hora pedida
* Autor: Tiago Melo Casal
* Em: 22/10/2003



Escreve "Desliga o Windows"

Escreve "Digite a hora em que será desligado no formato hh:mm"
Lê d
Janela Minimiza "ScriptVox"

@Espera
Seja h Hora
Seja t Tamanho h
Se t > 5 Copia c h 1 5
Se t > 5 Seja h c
Chama @ObserveTeclado
Se h >= d Desvia @Desligue
Desvia @Espera

@Desligue
Tela Normal
Escreve "Desligarei o computador em 1 minuto."
Escreve "Precione qualquer tecla para abortar:"
Seja m 0
@Esperando1Minuto
Chama @ObserveTeclado
Espera 1
Soma m 1
Se m="60"
Executa "C:\Windows\RUNDLL.EXE user.exe,exitwindows" &
Termina Mudo
Fim Se
Desvia @Esperando1Minuto

@ObserveTeclado
Observa Teclado t
Se t <> 0
Lê &
Termina Mudo
Fim Se
Retorna
