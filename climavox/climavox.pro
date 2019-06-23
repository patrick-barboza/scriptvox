*climavox - previsão do tempo para o sistema dosvox
*traz arquivo sonoro e informações atualizadas do site meteorológico climatempo.com.br
*autor:  Gabriel Benhur Schuck
*em 4/09/2018
*Atualização com novas funcionalidades em 19/09/2018
*Concluído em 25/09/2018
pasta_default:="\winvox\scripts\climavox"
token:="NWUzYTAzZDM0OTJiNDJmMGQ2ZTg2OWVjYzI2MGY0NWE="
converte token de mime
id_cidade:=""
previsão_7dias:=falso
abriu_arquivo:=falso
guarda_mp3:=""
guarda_resultado:=""
região=indefinido
linhas:=[]
 busca d dir pasta_default
se d=""
escreve "Erro:  O script não pode continuar."
escreve "Por favor, coloque os arquivos na pasta \winvox\scripts\climavox e tente novamente"
termina mudo
fim se
busca c pasta_default+"\cidades.db"
se c="" termina "Base de dados com nome de cidades (arquivo cidades.db) não foi achado."
cidade:=""
função início()
se verifica_região()="nenhuma" ou verifica_região()=indefinido
menu_principal()
senão
cidade=região
substitui cidade "(cidade)" ""
cidade:=cidade[1..pos("(",cidade)]
substitui cidade " (" ""
busca_localização()
@confirma
escreve "Consultando a previsão do tempo para "&
se região="Todo o Brasil"
escreve "todo o brasil" &
senão se pos("(cidade)",região)>0
substitui região "(cidade)" ""
cidade:=região
escreve região &
senão
escreve "a região " região &
fim se
escreve ". Confirma?"
le mudo o &
se o ="s"
soletra "s"
se região=cidade
informe("#13",cidade)
senão
informe("#13")
fim se
senão se o="n"
soletra "n"
pergunta_cidade()
senão se o="#0#62"
soletra "f4"
configura()
senão se o="#27"
termina mudo
senão
soletra o
escreve "Opção inválida."
desvia @confirma
fim se
fim se
fim função

função verifica_região()
busca arquivo pasta_default+"\config.cfg"
se arquivo=""
posição:=7406
retorna "nenhuma"
senão
linhas:=conteudo(pasta_default+"\config.cfg")
separa região linhas[0] "="
separa posição linhas[1] "="
separa id_cidade linhas[2] "="
separa guarda_mp3 linhas[3] "="
separa guarda_resultado linhas[4] "="
região:=região[1]
posição:=posição[1]
se id_cidade[1]<>indefinido id_cidade:=id_cidade[1]
se guarda_mp3[1]<>indefinido guarda_mp3:=guarda_mp3[1]
se guarda_resultado[1]<>indefinido guarda_resultado:=guarda_resultado[1]
retorna região
fim se
fim função

função pergunta_região()
escreve "Em qual região você está? Selecione com as setas:"
menu cria 1 1 30 3
menu adiciona "Consultar por cidade"
menu adiciona "Centro-oeste"
menu adiciona "Norte"
menu adiciona "Nordeste"
menu adiciona "Sul"
menu adiciona "Sudeste"
menu adiciona "Todo o Brasil"
menu executa n l região
se l="#27" menu_principal()
menu termina
informe(l)
fim função

função informe(l,cidade="")
url:=""
r:=""
se região="Todo o Brasil" url:="https://audio.climatempo.com.br//radios/br.mp3"
 se região="Norte" url:="https://audio.climatempo.com.br//radios/no.mp3"
se região="Nordeste" url:="https://audio.climatempo.com.br//radios/ne.mp3"
se região="Centro-oeste" url:="https://audio.climatempo.com.br//radios/co.mp3"
se região="Sudeste" url:="https://audio.climatempo.com.br//radios/se.mp3"
se região="Sul" url:="https://audio.climatempo.com.br//radios/su.mp3"
se região="Consultar por cidade" e l="#13" pergunta_cidade()
se l<>"#13" e l<>"#27"
escreve "para selecionar uma opção, use as setas."
pergunta_região();
fim se
se cidade=indefinido
se abrearq(#1,pasta_default+"\config.cfg","E")
escreve #1 "região=" &
escreve #1 região
escreve #1 "posição=" &
escreve #1 posição
escreve #1 "id_cidade="
escreve #1 "guarda_mp3=" guarda_mp3
escreve #1 "guarda_resultado=" guarda_resultado
fecha #1
mp3:=região+".mp3"
substitui mp3 " " "-"
checa_conexão()
baixa mudo url mp3 c
se pos("audio",c)=1
mci r "open "+mp3+" alias sound"
se r<>1
 remove mp3 &
termina "Erro ao abrir arquivo de áudio para reprodução"
fim se
mci_cmd:="play sound from "
concatena mci_cmd posição
mci r mci_cmd
espera 1
mci r "status sound mode"
enquanto r="playing"
mci r "status sound mode"
observa teclado t
se t=1 quebra
espera 500 ms
fim enquanto
se guarda_mp3<>"sim" ou guarda_mp3="" remove mp3 &
termina mudo
fim se
senão
remove mp3 &
termina "Não consegui obter a previsão do tempo em áudio."
fim se
senão
url:="http://apiadvisor.climatempo.com.br/api/v1/weather/locale/"+id_cidade+"/current?token="+token
checa_conexão()
baixa mudo url "resultado.json" c
converte cidade de utf8
dados:=conteudo("resultado.json")
se pos("error",dados[0])>0
remove "resultado.json" &
termina "O serviço online de previsão do tempo está ocupado, tente mais tarde"
fim se
substituição:=""
aspas:=""""
dados:=conteudo("resultado.json")
abriu:=abrearq(#1,"resultado.json","E")
se abriu=0 escreve "Não consegui abrir o arquivo para escrita"
se abriu=0 remove "resultado.json"
se abriu=0 termina mudo
i:=0
contador:=0
enquanto i<tamanho(dados)
linha:=dados[i]
substitui linha "\u00" "%"
converte linha de url
separa item linha ","
enquanto contador<tamanho(item)
p:=pos(":",item[contador])+1
se item[contador][p]="{"
enquanto item[contador][p]<>":"
p=p+1
fim enquanto
p=p+1
fim se
se p>1
se inteiro(item[contador][p])
substituição=substituição+item[contador][1..p-1]+aspas+item[contador][p..tamanho(item[contador])]+aspas+","
senão
substituição=substituição+item[contador]+","
fim se
fim se
substitui substituição "null," aspas+"null"+aspas+","
contador=contador+1
fim enquanto
p:=tamanho(substituição)
@loop1
se inteiro(substituição[p])=indefinido
p:=p-1
desvia @loop1
senão
substitui substituição[p..tamanho(substituição)] substituição[p] substituição[p]+aspas
fim se
substitui substituição "}"+ aspas aspas+"}"
substitui substituição "]"+ aspas "]"
substitui substituição[tamanho(substituição)] "," ""
substitui substituição aspas+aspas aspas
substitui substituição "null," aspas+"null"+aspas+","
substitui substituição "true" "verdadeiro"
escreve #1 substituição
i:=i+1
fim enquanto
fecha #1
dados:=conteudo("resultado.json","json")
abrearq(#1,pasta_default+"\config.cfg","E")
escreve #1 "região=" &
escreve #1 "(cidade)" dados.name " (" dados.state ")"
escreve #1 "posição=" &
escreve #1 posição
escreve #1 "id_cidade=" id_cidade
escreve #1 "guarda_mp3=" guarda_mp3
escreve #1 "guarda_resultado=" guarda_resultado
fecha #1
remove "resultado.json" &
arquivo:="previsão do tempo para "+dados.name+" ("+dados.state+").txt"
se guarda_resultado="sim" abrearq(#1,arquivo,"E")
escreve "Agora em " dados.name " (" dados.state "): " &
*se dados.data.icon="5"
*escreve "Chuvoso" &
*senão se dados.data.icon="4r"
*escreve "Sol com muitas nuvens" &
*senão se dados.data.icon="5n"
*escreve "Chuvoso" &
*senão se dados.data.icon="2r"
*escreve "Sol com muitas nuvens e chuva"&
*senão se dados.data.icon="2rn"
*escreve "Muitas nuvens e chuva" &
*senão se dados.data.icon="2"
*escreve "sol com algumas nuvens" &
*senão se dados.data.icon="4t"
*escreve "Chuva com trovoadas" &
*senão se dados.data.icon="4tn"
*escreve "Muitas nuvens, chuva e raios" &
*senão se dados.data.icon="2n"
*escreve "Algumas nuvens" &
*senão se dados.data.icon="3"
*escreve "Nublado"
*senão se dados.data.icon="3n"
*escreve "Nublado"
*senão
escreve dados.data.condition &
*fim se
escreve " - temperatura de " dados.data.temperature " graus."
se guarda_resultado="sim"
escreve #1 "Agora em " dados.name " (" dados.state "): " &
escreve #1 dados.data.condition &
escreve #1 " - temperatura de " dados.data.temperature " graus."
escreve #1 ""
fim se
@perguntapormaisinfo
escreve  "Mais informações (s/n)?"
le o&
se o="s"
escreve "Intensidade do vento:  " &
escreve dados.data.wind_velocity " kilômetros por hora."
escreve "umidade relativa do ar:  " dados.data.humidity "."
escreve "Pressão do ar:  " dados.data.pressure "."
escreve "Sensação térmica:  "  dados.data.sensation " graus."
se guarda_resultado="sim"
escreve #1 "Intensidade do vento:  " &
escreve #1 dados.data.wind_velocity " kilômetros por hora."
escreve #1 "umidade relativa do ar:  " dados.data.humidity "."
escreve #1 "Pressão do ar:  " dados.data.pressure "."
escreve #1 "Sensação térmica:  "  dados.data.sensation " graus."
escreve #1 ""
fim se
senão se o="n" ou o="#27"
se guarda_resultado="sim" fecha #1
termina "ok"
senão
desvia @perguntapormaisinfo
fim se
se guarda_resultado="sim" fecha #1
url="http://apiadvisor.climatempo.com.br/api/v1/forecast/locale/"+id_cidade+"/days/15?token="+token
checa_conexão()
baixa mudo url "resultado.json" c
se pos("json",c)<1 termina "Erro ao comunicar com a api meteorológica do tempo"
dados:=conteudo("resultado.json")
se pos("error",dados[0])>0
remove "resultado.json" &
termina "O serviço online de previsão do tempo está ocupado para mostrar a previsão dos próximos 7 dias, tente mais tarde"
fim se
abriu:=abrearq(#1,"resultado.json","E")
se abriu=0 escreve "Não consegui abrir o arquivo para escrita"
se abriu=0 remove "resultado.json"
se abriu=0 termina mudo
i=0
enquanto i<tamanho(dados)
linha:=dados[i]
substitui linha "\u00" "%"
converte linha de url
separa item linha ","
contador:=0
substituição:=""
enquanto contador<tamanho(item)
p:=pos(":",item[contador])+1
se item[contador][p]="{"
enquanto item[contador][p]<>":"
p=p+1
fim enquanto
p=p+1
fim se
se p>=1
se inteiro(item[contador][p])
substituição=substituição+item[contador][1..p-1]+aspas+item[contador][p..tamanho(item[contador])]+aspas+","
senão
substituição=substituição+item[contador]+", "
fim se
fim se
contador=contador+1
fim enquanto
p:=tamanho(substituição)
@loop2
se inteiro(substituição[p])=indefinido
p:=p-1
desvia @loop2
senão
substitui substituição[p..tamanho(substituição)] substituição[p] substituição[p]+aspas
fim se
substitui substituição "}"+ aspas aspas+"}"
substitui substituição "]"+ aspas "]"
substitui substituição[tamanho(substituição)] "," ""
substitui substituição aspas+aspas aspas
substitui substituição "null," aspas+"null"+aspas+","
substitui substituição "true" "verdadeiro"
escreve #1 substituição
i:=i+1
fim enquanto
fecha #1
dados:=conteudo("resultado.json","json")
remove "resultado.json" &
escreve "Veja como estará o tempo nos próximos 7 dias."
procurar_data(arquivo)
fim se
fim função

função pergunta_cidade()
linhas:=conteudo(pasta_default+"\cidades.db")
escreve "Digite a cidade, ou enter para escolher a região:"
@denovo
lê cidade
se cidade="" pergunta_região()
separa palavras cidade " "
cidade:=""
contador:=0
enquanto contador<tamanho(palavras)
palavras[contador][1]=maiusc(palavras[contador][1])
concatena cidade palavras[contador]
se contador<tamanho(palavras) concatena cidade " "
contador=contador+1
fim enquanto
cidade=trim(cidade)
substitui cidade "De " "de "
substitui cidade "Do " "do "
substitui cidade "Dos " "dos "
substitui cidade "Da " "da "
substitui cidade "Das " "das "
resultado:=[]
achado=0
para dados em linhas
achado=pos(cidade,dados)
se achado>=1 quebra
fim para
se achado>=1
região:=""
converte cidade para utf
url:="http://apiadvisor.climatempo.com.br/api/v1/locale/city?name="+cidade+"&token="+token
checa_conexão()
baixa mudo url "resultado.json" c
se pos("json",c)=0 termina "Não consegui obter a lista de cidades por estado.  Tente de novo mais tarde";
dados:=conteudo("resultado.json")
abriu:=abrearq(#1,"resultado.json","E")
se abriu=0 escreve "Não consegui abrir arquivo para escrita"
se abriu=0 remove "resultado.json" &
se abriu=0 termina mudo
i:=0
enquanto i<tamanho(dados)
linha:=dados[i]
substitui linha "\u00" "%"
converte linha de url
escreve #1 linha
i=i+1
fim enquanto
fecha #1
se pos("error",dados[0])>0
remove "resultado.json" &
termina "O serviço online de previsão do tempo está ocupado, tente mais tarde"
fim se
se pos("[]",dados[0])>0
remove "resultado.json" &
escreve "Não encontrado informações meteorológicas para essa cidade, tente parte do nome"
desvia @denovo
fim se
dados:=conteudo("resultado.json","json")
se tamanho(dados)=1
id_cidade=dados[0].id
informe("#13",cidade)
fim se
se tamanho(dados)>1
escreve tamanho(dados)+" resultados encontrados. Selecione:"
escolher_cidade(dados)
fim se
senão
escreve "Essa cidade não existe ou não consta na minha base de dados, tente outra:"
desvia @denovo
fim se
fim função

função escolher_cidade(resultado)
@promenu
menu cria 1 1 30 3
para opção em resultado
menu adiciona opção.name+" ("+opção.state+")"
fim para
menu executa n l cidade
se l<>"#13"
escreve "Use as setas para selecionar."
desvia @promenu
fim se
se l="#27" termina "terminado"
menu termina
região:=""
n:=n-1
id_cidade=resultado[n].id
converte cidade de utf
informe(l,cidade)
fim função

função procurar_data(arquivo)
se guarda_resultado="sim"
se abriu_arquivo=falso
abrearq(#1,arquivo,"A")
abriu_arquivo=verdadeiro
fim se
fim se
contador:=0
achado:=0
escreve "Digite a data no formato dd/mm/aaaa:"
lê data_usuário
se data_usuario=""
se guarda_resultado="sim" fecha #1
termina "terminado"
fim se
se pos("/",data_usuário)=0
escreve "Formato de data inválido."
procurar_data(arquivo)
senão
para info em dados.data
se data_usuario=info.date_br
achado=1
quebra
fim se
contador=contador+1
fim para
se achado=0
escreve "Formato de data inválido ou fora do período de 7 dias"
procurar_data()
fim se
d:=dados.data[contador].date_br[1..2]
m:=dados.data[contador].date_br[4..5]
a:=dados.data[contador].date_br[7..10]
dia_semana=d+2*m+3*(m+1)/5+a+a/4-a/100+a/400+2
dia_semana=dia_semana%7
substitui dia_semana 0 "Sábado"
substitui dia_semana 1 "Domingo"
substitui dia_semana 2 "Segunda-feira"
substitui dia_semana 3 "Terça-feira"
substitui dia_semana 4 "Quarta-feira"
substitui dia_semana 5 "Quinta-feira"
substitui dia_semana 6 "Sexta-feira"
se previsão_7dias=falso
se guarda_resultado="sim"
escreve #1 "Previsão do tempo para os próximos dias:"
escreve #1 ""
escreve #1 ""
previsão_7dias=verdadeiro
fim se
fim se
se dados.data[contador].date_br=data
escreve "Hoje ("+data+"):  " &
senão
escreve dia_semana+" ("+dados.data[contador].date_br+"):  " &
fim se
escreve dados.data[contador].text_icon.text.phrase.reduced
escreve "Mínima de " dados.data[contador].temperature.min " e máxima de " dados.data[contador].temperature.max " graus."
se guarda_resultado="sim"
se dados.data[contador].date_br=data
escreve #1 "Hoje ("+data+"):  " &
senão
escreve #1 dia_semana+" ("+dados.data[contador].date_br+"):  " &
fim se
escreve #1 dados.data[contador].text_icon.text.phrase.reduced
escreve #1 "Mínima de " dados.data[contador].temperature.min " e máxima de " dados.data[contador].temperature.max " graus."
escreve #1 ""
fim se
fim se
@outradata
escreve "Deseja consultar outra data?"
le o &
se o="s"
procurar_data(arquivo)
senão se o="n" ou o="#27"
se guarda_resultado="sim" fecha #1
termina "ok"
senão
desvia @outradata
fim se
fim função

função checa_conexão()
conecta mudo #1 "google.com.br" 80
checa c
se c=1 termina "Parece que você não está conectado à internet. Conecte-se e tente novamente"
fecha #1
retorna
fim função

função configura()
escreve "Editore as configurações."
escreve "Tecle f9 para alterar, selecione a opção desejada com as setas e depois enter."
escreve "Use esc para sair."
resposta:=guarda_mp3
resposta1:=guarda_resultado
form cria
form campo "Guarda os áudios?" resposta lista ["sim","não"]
form campo "Guarda resultado da previsão em arquivo?" resposta1 lista ["sim","não"]
form edita
abriu:=abrearq(#1,pasta_default+"\config.cfg","E")
se abriu=0 escreve "Não consegui abrir o arquivo de configuração"
se abriu=0 início()
escreve #1 linhas[0]
escreve #1 linhas[1]
escreve #1 linhas[2]
se resposta="sim"
escreve #1 "guarda_mp3=sim"
senão
escreve #1 "guarda_mp3=não"
fim se
se resposta1="sim"
escreve #1 "guarda_resultado=sim"
senão
escreve #1 "guarda_resultado=não"
fim se
fecha #1
escreve "Ok, configurado."
início()
fim função

função menu_principal()
escreve "O que deseja fazer?"
@promenu1
menu cria 1 1 30 3
menu adiciona "Consultar por região"
menu adiciona "Consultar por cidade"
menu executa n l t
se l<>"#13"
escreve "Use as setas para selecionar"
desvia @promenu1
termina
fim se
se n=1 pergunta_região()
se n=2 busca_localização()
fim função

função busca_localização()
se pos("(",região)=0 ou região=indefinido retorna
checa_conexão()
url:="http://gabrielschuck.000webhostapp.com/busca-cidade"
baixa mudo url "resultado.json" c
se pos ("json",c)=0
remove "resultado.json" &
pergunta_cidade()
fim se
dados:=conteudo("resultado.json")
abriu:=abrearq(#1,"resultado.json","E")
se abriu=0 escreve "Não consegui abrir o arquivo para escrita"
se abriu=0 remove "resultado.json"
se abriu=0 termina mudo
i:=0
enquanto i<tamanho(dados)
linha:=dados[i]
substitui linha "\u00" "%"
converte linha de url
escreve #1 linha
i=i+1
fim enquanto
fecha #1
dados=conteudo("resultado.json","json")
se cidade=dados.cidade
remove "resultado.json" &
retorna
senão
remove "resultado.json" &
@confirma1
escreve "Parece que você está em " dados.cidade " (" dados.estado ")."
escreve "Deseja consultar a previsão do tempo para esta cidade?"
le o &
se o="s"
cidade=dados.cidade
converte cidade para utf
url:="http://apiadvisor.climatempo.com.br/api/v1/locale/city?name="+cidade+"&token="+token
checa_conexão()
baixa mudo url "resultado.json" c
se pos("json",c)=0 termina "Não consegui obter a lista de cidades por estado.  Tente de novo mais tarde";
dados:=conteudo("resultado.json")
abriu:=abrearq(#1,"resultado.json","E")
se abriu=0 escreve "Não consegui abrir arquivo para escrita"
se abriu=0 remove "resultado.json"
se abriu=0 termina mudo
i:=0
enquanto i<tamanho(dados)
linha:=dados[i]
substitui linha "\u00" "%"
converte linha de url
escreve #1 linha
i=i+1
fim enquanto
fecha #1
se pos("error",dados[0])>0
remove "resultado.json" &
termina "O serviço online de previsão do tempo está ocupado, tente mais tarde"
fim se
se pos("[]",dados[0])>0
remove "resultado.json" &
escreve "Não encontrado informações meteorológicas para essa cidade, tente parte do nome."
pergunta_cidade()
fim se
dados:=conteudo("resultado.json","json")
se tamanho(dados)=1
id_cidade=dados[0].id
informe("#13",cidade)
fim se
se tamanho(dados)>1
escreve tamanho(dados)+" resultados encontrados. Selecione:"
escolher_cidade(dados)
fim se
senão se o="n"
se cidade="" ou cidade=dados.cidade pergunta_cidade()
se cidade<>"" e cidade<>dados.cidade retorna
senão
desvia @confirma1
fim se
fim se
fim função

início()
