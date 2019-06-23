*Atualiza data e hora do sistema pelo dosvox
*Autor:  Gabriel Benhur Schuck
*Em 23/09/2018
url:="http://gabrielschuck.000webhostapp.com/dataehora.php"
conecta mudo #1 "google.com.br" 80
checa c
se c=1 termina "Parece que você não está conectado à internet. Conecte-se e tente novamente"
baixa mudo url "r.json" c
se pos("json",c)<=1
termina "Erro ao obter data e hora atualizada da internet"
fim se
net:=conteudo("r.json","json")
remove "r.json" &
substitui net.data "\/" "/"
escreve "Data e hora atual:  "  net.data " " net.hora
escreve "Data e hora do sistema:  " data " " hora
hora_sistema=hora
hora_sistema=hora[1..5]
se data<>net.data ou hora_sistema<>net.hora[1..5]
escreve "A data e hora do sistema está desatualizada, deseja atualizá-la agora?"
le o &
se o="s"
baixa mudo url "r.json" c
conteudo("r.json","json");
remove "r.json" &
substitui net.data "/" "-"
executa "\Windows\System32\cmd.exe /C time "+net.hora
executa "\Windows\System32\cmd.exe /C date "+net.data
termina "Ok, atualizado"
senão
termina "ok"
fim se
senão
termina  "Data e hora atualizada"
fim se
