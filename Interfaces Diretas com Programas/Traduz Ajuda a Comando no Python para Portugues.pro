* Traduz ajuda (help) de um comando Python
* Autor: Tiago Melo Casal
* Em: 13/11/2010

* Variáveis principais
* e -- Caminho do Edivox (usado opcionalmente)
e := "C:\winvox\edivox.exe"
* l -- Dados de entrada do console ou de um arquivo
* p -- Caminho do executável do interpretador Python
p := "C:\python27\python.exe"
* t -- Caminho do executável do Traduvox, programa de tradução
t := "C:\winvox\traduvox.exe"
* x -- Operações diversas
* y -- Nome do arquivo com a saída do Python
y := "00AjPyEn.tmp"
* z -- Nome do arquivo com a saída do Traduvox
z := "00AjPyPt.tmp"


* Mensagem inicial
Escreve "Traduz ajuda (help) de um comando Python"
Escreve
Bipa

* Checa se o Python está instalado
Busca x p
Se x=""
  Escreve "Erro! Python não encontrado no caminho padrão: " p
  Termina "O python é necessário. Fechando o programa."
Fim Se

* Checa se o tradutor está instalado
Busca x t
Se x=""
  Escreve "Erro! Tradutor não encontrado no caminho padrão: " t
  Termina "Um tradutor é necessário. Fechando o programa."
Fim Se

* Pede o nome do comando do python para traduzir a ajuda
Escreve "Digite o comando do python que deseja ter a ajuda traduzida."
Escreve "Exemplo: para obter a ajuda traduzida do comando print "
Escreve "(imprima / imprimir / impressão), digite apenas print"
Lê l
Se l="" Termina "Desistiu! Fechando o programa."
Escreve "Aguarde..."

* Executa a linha de comando para obter a ajuda do comando digitado
Bipa
x := "cmd.exe /c "
x := x + p
x := x + " -c help('"
x := x + l
x := x + "') > "
x := x + y
Executa x

* Executa a linha de comando para obter a tradução do arquivo salvo
Bipa
x := t
x := x + " EN PT "
x := x + y
x := x + " "
x := x + z
Executa x
Bipa

* Apaga o primeiro arquivo salvo
Remove y &

* Salvar resultado
Escreve "Concluído. Deseja salvar o resultado da tradução?"
Escreve "Se não salvar agora, o resultado será apagado ao final " &
Escreve "do programa."
Lê l &
Se l <> "S" Desvia @MostraResultadoNaTela
    Escreve "Digite o nome do arquivo a criar, para salvar o resultado."
    Lê l
    Se l="" Escreve "Nada foi digitado, não salvando."
    Se l="" Desvia @MostraResultadoNaTela
    Replica z l

@MostraResultadoNaTela
* Verifica se o edivox (Editor de Textos do Dosvox) está instalado
Busca x e
  Se x="" Desvia @SemEdivox
  Escreve "Deseja exibir o resultado da tradução com o Edivox?"
  Lê l &
  Se l <> "s" Desvia @SemEdivox
* Exibe o resultado da tradução com o Edivox em modo de  leitura
    Bipa
    x := e
    x := x + " /L "
    x := x + z
    Executa x
* Ao sair do Edivox, apaga o arquivo com a tradução e finaliza
    Bipa
    Remove z &
    Escreve "Tchau!"
    Termina Mudo
@SemEdivox
Escreve "Deseja que o resultado seja mostrado na tela?"
Lê l &
Se l <> "s"
  Remove z &
  Escreve "Tchau!"
  Termina Mudo
Fim Se
Abre #1 z
Bipa
Lê #1 l
Checa x
Se x <> "0"
  Escreve "Erro! Desculpe, não é possível ler o resultado da tradução."
  Escreve "Arquivo parece estar vazio."
  Fecha #1
  Remove z &
  Escreve "Tchau!"
  Termina Mudo
Fim Se
Enquanto x = "0"
  Escreve l
  Lê #1 l
  Checa x
Fim Enquanto
bipa
Fecha #1
Remove z &
Escreve "Tchau!"
Termina Mudo
