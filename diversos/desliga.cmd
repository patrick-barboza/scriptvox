*Script para desligamento automático do sistema"
*Criado por:
*Eduardo Júlio



Escreve "Este script permite a você definir um tempo para o desligamento"&
Escreve "do sistema."
Escreve "observação:"

Escreve "Este script foi desenvolvido para Windows XP."



@inicio
seja p "Minutos."
Escreve "qual sua opção?"
Escreve "Tecle F1 para ajuda"


le o&
Se o = "#0#059" desvia @Opções
se o = "d" desvia @desligar
Se o = "r" desvia @reiniciar
se o = "#27" desvia @fim
Se o = "a" desvia @anular
@desvia @inicio

@Opções
Escreve "A: anular uma programação anterior;"
Escreve "D: desligar o sistema;"
escreve "R: reiniciar o sistema;"
Escreve "Esc: Terminar."
se o = "" desvia @inicio
se o <> "" desvia @inicio
desvia @inicio


@anular
seja s "shutdown -a"
executa s&
escreve "Sua programação anterior foi cancelada."
desvia @fim

@reiniciar
escreve "escreva o número em minutos aé o desligamento."
Escreve "exemplo: 60"
le t
multiplica t 60
seja s "shutdown -r -f -t "
concatena s t
Executa s&
divide t 60
concatena t p
Escreve "O Sistema será desligado em:"
escreve t
Desvia @fim

@desligar
Escreve "Digite o número de minutos até o desligamento."
escreve "Exemplo: "&
escreve "60"
le t
multiplica t 60
seja s "shutdown -s -f -t "
concatena s t
executa s&
divide t 60
Escreve "Ok. O sistema será desligado em: "&
concatena t p
Escreve t
Desvia @fim



@fim
Escreve "Até apróxima."
executa "c:\winvox\dosvox.exe"&
Termina mudo
