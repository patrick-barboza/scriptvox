*titulo "Telnet Papo"
abre #7 "POESIAS.TXT"
internet inicia
seja j "TRUE"
Escreve "Papo-script"
@principal
seja g "FALSE"
toca "c:\winvox\som\papovox\ppopcao.wav"
busca h "c:\winvox\som\papovox\ppopcao.wav"
se h = "" escreve "Qual sua opção?"
le q &
se q = "L" desvia @conex
se q = "E" desvia @esper
se q = "#27"
toca "c:\winvox\som\papovox\ppcnffim.wav"
busca h "c:\winvox\som\papovox\ppcnffim.wav"
se h = "" escreve "confirma fim?"
le q &
se q = "S" toca "c:\winvox\som\papovox\ppfim.wav"
se q = "S" termina mudo
senão
se q = "#0#59"
toca "C:\winvox\som\papovox\ppajud3.wav"
busca h "C:\winvox\som\papovox\ppajud3.wav"
se h = "" Escreve "E - Espera que alguém inicia uma conexão"
toca "C:\winvox\som\papovox\ppajud4.wav"
busca h "C:\winvox\som\papovox\ppajud4.wav"
se h = "" Escreve "L - Inicia uma ligação com outro usuário"
toca "C:\winvox\som\papovox\ppajud5.wav"
busca h "C:\winvox\som\papovox\ppajud5.wav"
se h = "" Escreve "M - Envia uma mensagem urgente para outro usuário"
toca "C:\winvox\som\papovox\ppajud6.wav"
busca h "C:\winvox\som\papovox\ppajud6.wav"
se h = "" Escreve "ESC - Termina o programa"
desvia @principal
senão
se q = "M"
Escreve ""
chama @mensagem
fim se
desvia @principal

@conex
se u <> ""
toca "c:\winvox\som\papovox\ppposso.wav"
busca h "c:\winvox\som\papovox\ppposso.wav"
se h = "" escreve "Posso chamar: " &
escreve u &
se h = "" escreve "?" &
le q &
se q = "N" desvia @novoIP
seja i u
desvia @conexIP
fim se
@novoIP
 toca "c:\winvox\som\tnetvox\tnnomcom.wav"
 busca h "c:\winvox\som\tnetvox\tnnomcom.wav"
 se h = "" escreve "Qual o ip a se conectar?"
le i
se i = "" desvia @principal
@conexIP
seja u i
conecta #1 i "1963"
toca "c:\winvox\som\papovox\global.wav"
escreve #1 ""
le #1 h
le #1 h
toca "c:\winvox\som\papovox\plugin.wav"
toca "c:\winvox\som\papovox\ppinipap.wav"
toca "c:\winvox\som\papovox\ppesctrm.wav"
seja p "FALSE"
seja k 0
desvia @tc

@esper
toca "c:\winvox\som\papovox\ppespera.wav"
serve #1 "1963" &
escreve #1 "-OK " &
Escreve "Tecle Dois enter para iniciar o bate papo"
escreve #1 "Entrando via telnet"
toca "c:\winvox\som\papovox\plugin.wav"
escreve #1 "+OK iniciando bate-papo"
toca "c:\winvox\som\papovox\ppinipap.wav"
busca h "c:\winvox\som\papovox\ppinipap.wav"
se h = "" escreve "Iniciando batepapo"

@tc
observa #1 e
observa teclado d
se d = 1 desvia @digitando
se e = 1 Desvia @lendo
desvia @tc

@lendo
le #1 l
checa  t
se t <> 0
Espera 1
 desvia @fim
fim se
*seja f pos "Entra na" l
*se f <> 0
*subtrai f 2
*copia o l 2 f
*Escreve #1 "++" &
*Escreve #1 o &
*Escreve #1 " " &
*chama @frase
*fim se
se p = "FALSE" concatena f l
se p = "FALSE" escreve l
se p = "TRUE"
seja x pos "(pvt" l
se x <> 0 chama @respondePVT
seja z l
fim se
se g = "TRUE" escreve #2 l
Desvia @tc

@digitando
se p = "TRUE"
escreve "Deseja voltar ao batepapo?"
le q &
se q = "S" Escreve "+OK, voltando a se comunicar"
se q = "S" seja p "FALSE"
se q = "S" Desvia @digitando
Desvia @tc
fim se

@1
se j = "FALSE" le mudo t &
se j = "TRUE" le t &
se t = "#13"
seja f pos "/POESIA" a
se f <> 0 desvia @lical
bipa 1
 escreve #1 a
escreve mudo a
seja a ""
seja k 0
Desvia @tc
senão
se t = "#0#119"
bipa 1 
Bipa 1
Bipa 1
desvia @bustersala
senão
se t = "#0#71"
Escreve "Informe o apelido"
le o
desvia @lical
senão
se t = "#27"
toca "c:\winvox\som\papovox\ppcnffim.wav"
busca h "c:\winvox\som\papovox\ppcnffim.wav"
se h = "" escreve "confirma fim?"
le q &
se q = "S" desvia @fim
desvia @tc
senão
se t = "#10"
bipa 1
bipa 2
bipa 1
bipa 2
desvia @conquista
senão
se t = "#8" desvia @apagar
fim se
se t = "#11"
toca "c:\dosvox\som\edivox\edcoluna.wav"
escreve k
Desvia @1
fim se
se k >= 242
bipa
Desvia @1
fim se
se t = "#9"
bipa 1
bipa 1
bipa 1
bipa 1
soma k 4
concatena a "    "
Desvia @1
fim se
se t = "#25"
toca "c:\dosvox\som\letras\_cpoapa.wav"
seja a ""
seja k 0
Desvia @tc
senão
se t = "#0#95"
fecha #1
desvia @esper
senão
se t = "#0#60"
Escreve "Modo De espera, tecle s para retornar ao batepapo"
seja p "TRUE"
escreve "Deseja gravar as msg num arquivo?"
le q &
se q = "S" chama @gravar
desvia @tc
senão
se t = "#0#61"
se g = "TRUE" desvia @fimgravar
se g = "FALSE" chama @gravar
desvia @tc
senão
se t = "#0#82"
bipa
ip local #1 i
seja t tamanho i
concatena a i
soma k t
desvia @1
senão
se t = "#0#255"
bipa
ip remoto #1 i
seja t tamanho i
concatena a i
soma k t
desvia @tc
senão
se t = "#0#254"
bipa 1
bipa 1
bipa 1
transfere para b
escreve #1 b
desvia @tc
senão
se t = "#0#67"
congela
desvia @tc
senão
se t = "#0#59"
Escreve "F1 Ajuda"
Escreve "F2 Pausa o batepapo"
Escreve "CONTROL F2 Espera um parceiro, para esta opção sertifique-se que o sítiovox está fechado. Obs.: só aceita telnet"
Escreve "F3 Grava o batepapo num arquivo. F3 por uma segunda vez termina a gravação"
Escreve "F5 Manda mensagem urgente"
Escreve "F6 Informa o seu próprio ip"
Escreve "CONTROL F6 Informa o ip do seu parceiro"
Escreve "F8 Informa horas"
Escreve "F9 Congela tela"
Escreve "Insert Imprime na tela o seu ip"
Escreve "CONTROL insert Imprime na tela o ip do seu parceiro"
Escreve "ROME envia uma poesia para um usuário"
desvia @tc
senão
se t = "#0#64"
toca "c:\winvox\som\papovox\ppnumip.wav"
busca h "c:\winvox\som\papovox\ppnumip.wav"
se h = "" Escreve "Seu número ip é: " &
ip local #1 i
Escreve i
desvia @tc
senão
se t = "#0#99"
Escreve "O número ip de seu parceiro é: " &
ip remoto #1 i
Escreve i
desvia @tc
senão
se t = "#0#66"
toca "c:\winvox\som\papovox\pphora.wav"
busca h "c:\winvox\som\papovox\pphora.wav"
se h = "" Escreve "A hora atual é: " &
seja h hora
seja m tamanho h
seja t pos ":" h
subtrai t 1
copia o h 1 t
soma t 2
copia h h t m
seja m tamanho h
seja t pos ":" h
subtrai t 1
copia i h 1 t
escreve o &
Escreve " Horas " &
Escreve i &
Escreve " Minutos"
Desvia @tc
senão
se t = "#0#63"
Escreve ""
chama @mensagem
desvia @tc
senão
se t = "#0#62"
toca "c:\winvox\som\papovox\ppqveloc.wav"
busca h "c:\winvox\som\papovox\ppqveloc.wav"
se h = "" escreve "Qual a velocidade, de 1 a 5?"
le v &
se v > 5 seja v 0
se v < 0 seja v 0
velocidade v
toca "c:\winvox\som\papovox\ppsolet.wav"
busca h "c:\winvox\som\papovox\ppsolet.wav"
se h = "" escreve "Soletra digitação?"
le s &
SE s = "" DESVIA @tc
se s = "N" seja j "FALSE"
se s = "S" seja j "TRUE"
desvia @tc
fim se


se t = "A" desvia @insereLetra
se t = "B" desvia @insereLetra
se t = "C" desvia @insereLetra
se t = "D" desvia @insereLetra
se t = "E" desvia @insereLetra
se t = "F" desvia @insereLetra
se t = "G" desvia @insereLetra
se t = "H" desvia @insereLetra
se t = "I" desvia @insereLetra
se t = "J" desvia @insereLetra
se t = "K" desvia @insereLetra
se t = "L" desvia @insereLetra
se t = "M" desvia @insereLetra
se t = "N" desvia @insereLetra
se t = "O" desvia @insereLetra
se t = "P" desvia @insereLetra
se t = "Q" desvia @insereLetra
se t = "R" desvia @insereLetra
se t = "S" desvia @insereLetra
se t = "T" desvia @insereLetra
se t = "U" desvia @insereLetra
se t = "V" desvia @insereLetra
se t = "W" desvia @insereLetra
se t = "X" desvia @insereLetra
se t = "Y" desvia @insereLetra
se t = "Z" desvia @insereLetra

se t = "1" desvia @insereLetra
se t = "2" desvia @insereLetra
se t = "3" desvia @insereLetra
se t = "4" desvia @insereLetra
se t = "5" desvia @insereLetra
se t = "6" desvia @insereLetra
se t = "7" desvia @insereLetra
se t = "8" desvia @insereLetra
se t = "9" desvia @insereLetra
se t = "0" desvia @insereLetra

se t = "!" desvia @insereLetra
se t = "@" desvia @insereLetra
se t = "#" desvia @insereLetra
se t = "$" desvia @insereLetra
se t = "%" desvia @insereLetra
se t = "¨" desvia @insereLetra
se t = "&" desvia @insereLetra
se t = "*" desvia @insereLetra
se t = "(" desvia @insereLetra
se t = ")" desvia @insereLetra
se t = "-" desvia @insereLetra
se t = "_" desvia @insereLetra
se t = "=" desvia @insereLetra
se t = "+" desvia @insereLetra
se t = "'" desvia @insereLetra
se t = """" desvia @insereLetra

se t = "," desvia @insereLetra
se t = "." desvia @insereLetra
se t = ";" desvia @insereLetra
se t = "<" desvia @insereLetra
se t = ">" desvia @insereLetra
se t = ":" desvia @insereLetra
se t = "/" desvia @insereLetra
se t = "?" desvia @insereLetra
se t = " " desvia @insereLetra
se t = "\" desvia @insereLetra
se t = "|" desvia @insereLetra
se t = "°" desvia @insereLetra
se t = "§" desvia @insereLetra

se t = "Á" desvia @insereLetra
se t = "É" desvia @insereLetra
se t = "Í" desvia @insereLetra
se t = "Ó" desvia @insereLetra
se t = "Ú" desvia @insereLetra
se t = "À" desvia @insereLetra
se t = "È" desvia @insereLetra
se t = "ì" desvia @insereLetra
se t = "Ò" desvia @insereLetra
se t = "Ù" desvia @insereLetra
se t = "Ã" desvia @insereLetra
se t = "Õ" desvia @insereLetra
se t = "Ñ" desvia @insereLetra
se t = "Â" desvia @insereLetra
se t = "Ê" desvia @insereLetra
se t = "Ô" desvia @insereLetra
se t = "Û" desvia @insereLetra
se t = "Ä" desvia @insereLetra
se t = "Ë" desvia @insereLetra
se t = "Ï" desvia @insereLetra
se t = "Ö" desvia @insereLetra
se t = "Ü" desvia @insereLetra
se t = "Ç" desvia @insereLetra
se t = "[" desvia @insereLetra
se t = "]" desvia @insereLetra
se t = "{" desvia @insereLetra
se t = "}" desvia @insereLetra

se t = "~" desvia @insereLetra
se t = "^" desvia @insereLetra
se t = "´" desvia @insereLetra
se t = "`" desvia @insereLetra
se t = "¨" desvia @insereLetra

toca "c:\winvox\som\papovox\ppaptf1.wav"
busca h "c:\winvox\som\papovox\ppaptf1.wav"
se h = "" escreve "Opção inválida, aperte f1 para ajuda"
Desvia @tc

@insereLetra
soma k 1
concatena a t
Desvia @1

@apagar
copia b a k k
se b = ""
Desvia @tc
fim se
toca "c:\dosvox\som\letras\_del.wav"
se b = " " toca "c:\dosvox\som\letras\_32.wav"
escreve b
subtrai k 1
copia c a 1 k
seja a c
Desvia @1

se t = "#0#95"
fecha #1
desvia @esper
senão
se t = "#0#60"
Escreve "Modo De espera, tecle s para retornar ao batepapo"
escreve "Deseja gravar as msg num arquivo?"
le q &
se q = "S" chama @gravar
desvia @tc
senão
se t = "#0#61"
se g = TRUE" desvia @fimgravar
se g = "FALSE" chama @gravar
desvia @tc
fim se

@fimgravar
toca "c:\winvox\som\tnetvox\tnargrav.wav"
busca h "c:\winvox\som\tnetvox\tnargrav.wav"
se h = "" Escreve "Arquivo gravado"
fecha #2
seja g "FALSE"
DESVIA @TC

@fim
toca "c:\winvox\som\papovox\filedone.wav"
toca "c:\winvox\som\papovox\ppfimpap.wav"
busca h "c:\winvox\som\papovox\ppfimpap.wav"
se h = "" escreve "Fim do batepapo"
fecha #1
desvia @principal

@gravar
escreve "Modo gravação"
@informarquiv
toca "c:\winvox\som\tnetvox\tnnomrec.wav"
busca h "c:\winvox\som\tnetvox\tnnomrec.wav"
se h = "" escreve "Qual o nome do arquivo a receber?"
le n
se n = "" desvia @informarquiv
abre #2 n &
seja h hora
seja d data
escreve #2 h &
escreve #2 " " &
escreve #2 d
seja g "TRUE"
toca "c:\winvox\som\tnetvox\tnagrav.wav"
retorna

@respondePVT
seja y pos " (pvt" l
se y <> 0 subtrai x 3
se y = 0 subtrai x 1
copia r l 2 x
seja l "++"
concatena l r
escreve #1 r
se g = "TRUE" escreve #2 z
Escreve #1 l &
Escreve #1 " No momento estou ocupado com outras atividades, aguarde um instante e já voltamos a conversar!"
retorna

@mensagem

se u <> ""
toca "c:\winvox\som\papovox\ppposso.wav"
busca h "c:\winvox\som\papovox\ppposso.wav"
se h = "" escreve "Posso chamar: " &
escreve u &
se h = "" escreve "?" &
le q &
se q = "N" desvia @qualoIP
seja i u
desvia @mandaProIp
fim se

@qualoIP
Escreve "Qual o ip a enviar mensagem?"
le i
se i = "" retorna
@mandaProIp
Escreve "Informe seu apelido ou nome"
le n
toca "c:\winvox\som\papovox\ppinfmsg.wav"
busca h "c:\winvox\som\papovox\ppinfmsg.wav"
se h = "" Escreve "Digite a mensagem"
le m
se m = "" retorna
seja u i
conecta #2 i "1964" &
Escreve #2 n
escreve #2 "Papo Telnet"
escreve #2 m
fecha #2
toca "c:\winvox\som\papovox\ppmsgenv.wav"
busca h "c:\winvox\som\papovox\ppmsgenv.wav"
se h = "" Escreve "A mensagem foi enviada"
retorna

@conquista

    Escreve "Informe o nome completo do arquivo a recitar"
    le n
    Abre #9 n

@scle
le #9 t
checa e
se e <> 0 desvia @brub
Espera 3
Escreve #1 t
observa #1 d
se d <>0 chama @vri1
desvia @scle

@vri1
le #1 d
checa e
se e <> 0 desvia @fim
escreve d
retorna

@brub
fecha #9
desvia @tc

@frase
seja q ""
@comec1
le #7 f
checa e
se e <> 0
fecha #7
abre #7 "poesias.txt"
desvia @comec1
fim se

seja r pos "&" f
se r = 0
concatena q f
escreve #1 f &
desvia @comec1
fim se

seja t tamanho f
copia f f 2 t
Escreve #1 f
concatena q f

se o <> ""
escreve "enviei um pvt para " &
Escreve o &
Escreve "com a seguinte frase: " &
escreve q &
fim se
retorna

@lical
se o <> ""
Escreve #1 "++" &
Escreve #1 o &
Escreve #1 " " &
fim se
chama @frase
desvia @tc

@bustersala
espera 3
escreve #1 "/1"
espera 3
escreve #1 "/2"
espera 3
escreve #1 "/3"
espera 3
escreve #1 "/4"
espera 3
escreve #1 "/5"
espera 3
escreve #1 "/6"
espera 3
escreve #1 "/7"
espera 3
escreve #1 "/8"
espera 3
escreve #1 "/a"
espera 3
escreve #1 "/b"
espera 3
escreve #1 "/c"
espera 3
escreve #1 "/d"
espera 3
escreve #1 "/e"
espera 3
escreve #1 "/f"
espera 3
escreve #1 "/g"
espera 3
escreve #1 "/h"
espera 3
escreve #1 "/i"
espera 3
escreve #1 "/j"
espera 3
escreve #1 "/k"
espera 3
escreve #1 "/l"
espera 3
escreve #1 "/m"
espera 3
escreve #1 "/n"
espera 3
escreve #1 "/o"
espera 3
escreve #1 "/p"
espera 3
escreve #1 "/q"
espera 3
escreve #1 "/r"
espera 3
escreve #1 "/s"
espera 3
escreve #1 "/t"
espera 3
escreve #1 "/u"
espera 3
escreve #1 "/v"
espera 3
escreve #1 "/w"
espera 3
escreve #1 "/y"
espera 3
escreve #1 "/x"
espera 3
escreve #1 "/z"

desvia @tc
