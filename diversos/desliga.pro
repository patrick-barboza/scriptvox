*Script para desligamento automático do sistema"
*Criado por:
*Eduardo Júlio



Escreve "Este script permite a você definir um tempo para o desligamento"&
Escreve "do sistema."
@inicio
p := "Minutos."
Escreve "qual sua opção?"
Escreve "Tecle F1 para ajuda"


le o &
Se o = "#0#59" desvia @Opções
se o = "d" desvia @desligar
Se o = "r" desvia @reiniciar
se o = "#27" desvia @fim
Se o = "a" desvia @anular
desvia @inicio

@Opções
Escreve "A: anular uma programação anterior;"
Escreve "D: desligar o sistema;"
escreve "R: reiniciar o sistema;"
Escreve "Esc: Terminar."
desvia @inicio


@anular
executa "shutdown -a" &
escreve "Sua programação anterior foi cancelada."
desvia @inicio

@reiniciar
escreve "escreva o número em minutos aé o desligamento."
Escreve "exemplo: 60"
le t
se t = "" desvia @inicio
t := t * 60
s := "shutdown -r -f -t "
s := s + t
Executa s&
t := t / 60
t := t + p
Escreve "O Sistema será desligado em:"
escreve t
Desvia @fim

@desligar
Escreve "Digite o número de minutos até o desligamento."
escreve "Exemplo: "&
escreve "60"
le t
t := t * 60
s := "shutdown -s -f -t "
s := s + t
executa s&
t := t / 60
Escreve "Ok. O sistema será desligado em: "&
t := t + p
Escreve t
Desvia @fim



@fim
termina  "Até a próxima."
Termina mudo
