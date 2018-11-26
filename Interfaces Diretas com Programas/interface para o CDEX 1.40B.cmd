*Interface adaptativa para o programa Cdex140beta3
*Autor: Edson Batista Junior
*Em 26 de fevereiro de 2002
*Dicas para utilização podem ser encontradas no arquivo:
*c:\winvox\manual\convmp3.txt


     escreve  "Conversor para arquivos wav e mp3"
     toca "c:\winvox\scripts\som\convmp3\cdabert.wav"

@qualopcao
     escreve  "Qual a sua opção? (F1 ajuda)"
     toca "c:\winvox\scripts\som\convmp3\cdqualop.wav"
     le o &
se o = "#27"
desvia @cancelado
senão
     se o = "#0#59"
     desvia @ajuda
     senão
     se o = "e"
     desvia @convertewav
     senão
     se o = "m"
     desvia @convertemp3
     senão
     se o = "w"
     desvia @mpegtowav
     senão
     se o = "c"
     desvia @wavtompeg
     senão
     desvia @invalida
     fim se

@convertemp3
     escreve  "Informe o número da faixa a converter:"
     toca "c:\winvox\scripts\som\convmp3\cdnfaixa.wav"
     le f
     se f = "" desvia @cancelado

@pegadados
     escreve  "Título da faixa:"
     toca "c:\winvox\scripts\som\convmp3\cdtitfai.wav"
     le t
     escreve  "Artista ou banda:"
     toca "c:\winvox\scripts\som\convmp3\cdartist.wav"
     le a
     escreve  "Ano em que foi gravada (tecle enter se não souber):"
     toca "c:\winvox\scripts\som\convmp3\cdano.wav"
     le y

@processa
     escreve  "OK"
     toca "c:\winvox\scripts\som\convmp3\cdok.wav"
     escreve  "Carregando CD Extractor"
     toca "c:\winvox\scripts\som\convmp3\cdcarreg.wav"
     janela fecha "MONITVOX"
     dir troca "c:\cdex140b"
     executa "c:\cdex140b\cdex" &
     espera 10
     escreve  "Selecionando a faixa" &
     toca "c:\winvox\scripts\som\convmp3\cdselfai.wav"
     escreve f
     chama @selecionafaixa
     escreve  "Informando dados"
     toca "c:\winvox\scripts\som\convmp3\cdindado.wav"
     chama @dados
     espera 2
     aciona "F9"
     escreve  "Iniciando a conversão"
     toca "c:\winvox\scripts\som\convmp3\cdinconv.wav"
     espera 5
     seja k "CDex"
     chama @esperacdex
     espera 3
     aciona "ALT+F4"
     espera 3
     escreve  "Fim da conversão"
     toca "c:\winvox\scripts\som\convmp3\cdfimcon.wav"
     espera 1
     executa "c:\winvox\monitvox"
     espera 1
     termina 

@convertewav
     escreve  "Informe o número da faixa a converter:"
     toca "c:\winvox\scripts\som\convmp3\cdnfaixa.wav"
     le f
     se f = "" desvia @cancelado

@pegadados2
     escreve  "Título da faixa:"
     toca "c:\winvox\scripts\som\convmp3\cdtitfai.wav"
     le t
     escreve  "Artista ou banda:"
     toca "c:\winvox\scripts\som\convmp3\cdartist.wav"
     le a
     escreve  "Ano em que foi gravada (tecle enter se não souber):"
     toca "c:\winvox\scripts\som\convmp3\cdano.wav"
     le y

@processa2
     escreve  "OK"
     toca "c:\winvox\scripts\som\convmp3\cdok.wav"
     escreve  "Carregando CD Extractor"
     toca "c:\winvox\scripts\som\convmp3\cdcarreg.wav"
     janela fecha "MONITVOX"
     dir troca "c:\cdex140b"
     executa "c:\cdex140b\cdex" &
     espera 10
     escreve  "Selecionando a faixa" &
     toca "c:\winvox\scripts\som\convmp3\cdselfai.wav"
     escreve f
     chama @selecionafaixa
     escreve  "Informando dados"
     toca "c:\winvox\scripts\som\convmp3\cdindado.wav"
     chama @dados
     espera 2
     aciona "F8"
     escreve  "Iniciando a conversão"
     toca "c:\winvox\scripts\som\convmp3\cdinconv.wav"
     espera 5
     seja k "CDex"
     chama @esperacdex
     espera 3
     aciona "ALT+F4"
     espera 3
     escreve  "Fim da conversão"
     toca "c:\winvox\scripts\som\convmp3\cdfimcon.wav"
     espera 1
     executa "c:\winvox\monitvox"
     espera 1
     termina 

@selecionafaixa
     seja n 0

@loopfaixa
     aciona "DOWN"
     soma n 1
     se n = f retorna
     desvia @loopfaixa

@dados
     aciona "F2"
     espera 1
     digita t
     espera 1
     aciona "TAB"
     espera 1
     seja l 0
     aciona "#08"
     aciona "#08"

@loopartist
     aciona "DEL"
     soma l 1
     se l=50 desvia @fimloopartist
     desvia @loopartist

@fimloopartist
     espera 1
     digita a &
     espera 1
     aciona "TAB"
     espera 1
     seja l 0
     aciona "#08"
     aciona "#08"

@looptitle
     aciona "DEL"
     soma l 1
     se l=50 desvia @fimlooptitle
     desvia @looptitle

@fimlooptitle
     espera 1
     digita t &
     espera 1
     aciona "TAB"
     aciona "TAB"
     espera 1
     aciona "#08"
     aciona "#08"
     aciona "DEL"
     aciona "DEL"
     aciona "DEL"
     aciona "DEL"
     espera 1
     se y = "" retorna
     digita y &
     espera 1
     retorna

@mpegtowav
     escreve  "Informe o nome completo do arquivo a converter:"
     toca "c:\winvox\scripts\som\convmp3\cdnarq.wav"
     le f
     se f = "" desvia @cancelado
     escreve  "Nome completo do arquivo de saída:"
     toca "c:\winvox\scripts\som\convmp3\cdnarqsa.wav"
     le s
     janela fecha "MONITVOX"
     chama @copiaarquivodeentrada
     espera 2
     escreve  "Carregando conversor."
     toca "c:\winvox\scripts\som\convmp3\cdcarcon.wav"
     dir troca "c:\cdex140b"
     executa "c:\cdex140b\cdex" &
     espera 10
     aciona "ALT+C"
     espera 1
     aciona "DOWN"
     aciona "DOWN"
     aciona "DOWN"
     aciona "DOWN"
     aciona "DOWN"
     aciona "ENTER"
     espera 1
     aciona "DOWN"
     aciona "ENTER"
     escreve  "Iniciando a conversão"
     toca "c:\winvox\scripts\som\convmp3\cdinconv.wav"
     espera 5
     seja k "CDex"
     chama @esperacdex
     espera 3
     aciona "ALT+F4"
     espera 2
     seja q 0
     chama @copiaarquivodesaida
     espera 3
     chama @deletaarquivos
     espera 3
     escreve  "Fim da conversão"
     toca "c:\winvox\scripts\som\convmp3\cdfimcon.wav"
     espera 1
     executa "c:\winvox\monitvox"
     espera 1
     termina 

@wavtompeg
     escreve  "Informe o nome completo do arquivo a converter:"
     toca "c:\winvox\scripts\som\convmp3\cdnarq.wav"
     le f
     se f = "" desvia @cancelado
     escreve  "Nome completo do arquivo de saída:"
     toca "c:\winvox\scripts\som\convmp3\cdnarqsa.wav"
     le s
     janela fecha "MONITVOX"
     chama @copiaarquivodeentrada
     espera 2
     escreve  "Carregando conversor."
     toca "c:\winvox\scripts\som\convmp3\cdcarcon.wav"
     dir troca "c:\cdex140b"
     executa "c:\cdex140b\cdex" &
     espera 10
     aciona "ALT+C"
     espera 1
     aciona "DOWN"
     aciona "DOWN"
     aciona "DOWN"
     aciona "DOWN"
     aciona "ENTER"
     espera 1
     aciona "DOWN"
     aciona "ENTER"
     escreve  "Iniciando a conversão"
     toca "c:\winvox\scripts\som\convmp3\cdinconv.wav"
     espera 5
     seja k "CDex"
     chama @esperacdex
     espera 3
     aciona "ALT+F4"
     espera 2
     seja q 1
     chama @copiaarquivodesaida
     espera 3
     chama @deletaarquivos
     espera 3
     escreve  "Fim da conversão"
     toca "c:\winvox\scripts\som\convmp3\cdfimcon.wav"
     espera 1
     executa "c:\winvox\monitvox"
     espera 1
     termina 

@esperacdex
     espera 1
     captura TITULO j
     se j *=* k retorna
     desvia @esperacdex

@copiaarquivodeentrada
     seja c "command /c copy "
     concatena c f
     concatena c " \cdex140b\mymusi~1"
     executa c
     retorna

@copiaarquivodesaida
     seja c "command /c copy "
     se q = 0
     seja d "\cdex140b\mymusi~1\*.wav "
     senão
     se q = 1
     seja d "\cdex140b\mymusi~1\*.mp3 "
     fim se
     concatena c d
     concatena c s
     executa c
     retorna

@deletaarquivos
     dir troca "c:\cdex140b\mymusi~1"
     busca a "*.*"

@loop
     se a = "" retorna
     remove a &
     busca a PROXIMO
     desvia @loop

@invalida
     escreve  "Opção inválida."
     toca "c:\winvox\scripts\som\convmp3\cdopinva.wav"
     desvia @qualopcao

@ajuda
     escreve  "As opções são:"
     escreve  "m - extrai arquivo do CD e converte em mp3;"
     escreve  "e - extrai do CD e converte em formato wav;"
     escreve  "c - converte o arquivo wav para mp3;"
     escreve  "w - converte de mp3 para o formato wav."
     toca "c:\winvox\scripts\som\convmp3\cdajuda.wav"
     desvia @qualopcao

@cancelado
     escreve  "Programa cancelado"
     toca "c:\winvox\scripts\som\convmp3\cdcancel.wav"
     termina 
