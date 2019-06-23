* Junta sílaba qebrada no fim da linha
* Autor: Tiago Melo Casal
* Em: 27/03/2012 | 15/10/2014 (corrigido aspas nas linhas 110 e 167)



* Início
escreve "Junta sílaba qebrada no fim da linha."
escreve

* Tipo de processamento: p="a" automático, p="i" interativo
seja x 0
@tipo
    se x >= "3" escreve "Desistiu."
    se x >= "3" termina mudo
    escreve "Digite o tipo de processamento: A -- automático; I -- interativo: " &
    lê p &
    se p="a" desvia @arquivos
    se p="i" desvia @arquivos
    soma x 1
    desvia @tipo

* Abre arquivo de entrada
@arquivos
escreve "digite caminho e nome do arquivo de entrada:"
lê e
se e="" escreve "Desistiu."
se e="" termina mudo
busca b e
se b="" escreve "Arquivo não encontrado. Tchau!"
se b="" termina mudo
Abre #1 e

* Cria arquivo de saída
escreve "digite caminho e nome do arquivo de saída:"
lê s
se s="" escreve "Desistiu."
se s="" termina mudo
busca b s
se b <> "" escreve "Arquivo já existe. Tchau!"
se b <> "" termina mudo
Abre #2 s &

* Mensagem de início de processamento
se p="i"
    escreve "Obs.: a cada palavra quebrada, será tocado um bipe e"
    escreve "exibida a palavra na forma que o programa juntou. Cheque"
    escreve "se está correto, modifique se for o caso e tecle Enter;"
    escreve "para desistir, apague a linha deixando em branco e tecle"
    escreve "Enter, o conteúdo confirmado até a desistência será"
    escreve "salvo, o conteúdo ainda não verificado será salvo sem"
    escreve "alteração na sequência natural do arquivo."
fim se
escreve "Aguarde..."

* lê arquivo linha a linha e toma as devidas providências
lê #1 l
checa c
se c <> 0
    fecha #2
    fecha #1
    escreve "Aviso: o arquivo de entrada parece estar vazio. Tchau!"
    termina mudo
fim se
* salva última linha, torna-se penúltima linha
seja k l
lê #1 l
checa c
se c <> 0
    escreve #2 k
    fecha #2
    fecha #1
    escreve "Aviso: o arquivo de entrada parece ter só 1 linha. Tchau!"
    termina mudo
fim se
enquanto c = 0
    * descartando casos comuns
    seja t tamanho k
    se t <= "1" desvia @pulo1
    seja v t
    subtrai v 1
    copia x k v t
    se x=" -" desvia @pulo1
    se x="--" desvia @pulo1
    se l="" desvia @pulo1
    se l="-" desvia @pulo1
    se l =* " " desvia @pulo1
    se l =* "- " desvia @pulo1
    se l =* "--" desvia @pulo1
    * Pós descarte de situações comuns
    copia x k t t
    se x="-" chama @junta
    @pulo1
    escreve #2 k
    * salva última linha, torna-se penúltima linha
    seja k l
    lê #1 l
    checa c
fim enquanto
escreve #2 k
desvia @acabou

* Realiza checagens na penútima e última linha, se OK junta a palavra,
* restante fica em l
@junta
    * checa se antes do hífen existe elementos que não constitui palavra
    copia x k v v
    se x=" " retorna
    se x="!" retorna
    se x="""" retorna
    se x="#" retorna
    se x="$" retorna
    se x="%" retorna
    se x="&" retorna
    se x="'" retorna
    se x="(" retorna
    se x=")" retorna
    se x="*" retorna
    se x="+" retorna
    se x="," retorna
    se x="-" retorna
    se x="." retorna
    se x="/" retorna
    se x="0" retorna
    se x="1" retorna
    se x="2" retorna
    se x="3" retorna
    se x="4" retorna
    se x="5" retorna
    se x="6" retorna
    se x="7" retorna
    se x="8" retorna
    se x="9" retorna
    se x=";" retorna
    se x="<" retorna
    se x="=" retorna
    se x=">" retorna
    se x="?" retorna
    se x="@" retorna
    se x="¡" retorna
    se x="[" retorna
    se x="]" retorna
    se x="^" retorna
    se x="_" retorna
    se x="`" retorna
    se x="{" retorna
    se x="}" retorna
    se x="~" retorna
    se x="¨" retorna
    se x="§" retorna
    se x="´" retorna
    se x="ª" retorna
    se x="º" retorna
    se x="°" retorna
    se x="¿" retorna

    * checa se l inicia por elementos que não constitui palavra,
    * caso o primeiro caracter seja hífen, checa o segundo
    seja u tamanho l
    se u="1" seja x l
    se u="1" desvia @pulo2
    copia x l 1 1
    se x="-" copia x l 2 2
    @pulo2
    se x=" " retorna
    se x="!" retorna
    se x="""" retorna
    se x="#" retorna
    se x="$" retorna
    se x="%" retorna
    se x="&" retorna
    se x="'" retorna
    se x="(" retorna
    se x=")" retorna
    se x="*" retorna
    se x="+" retorna
    se x="," retorna
    se x="-" retorna
    se x="." retorna
    se x="/" retorna
    se x="0" retorna
    se x="1" retorna
    se x="2" retorna
    se x="3" retorna
    se x="4" retorna
    se x="5" retorna
    se x="6" retorna
    se x="7" retorna
    se x="8" retorna
    se x="9" retorna
    se x=";" retorna
    se x="<" retorna
    se x="=" retorna
    se x=">" retorna
    se x="?" retorna
    se x="@" retorna
    se x="¡" retorna
    se x="[" retorna
    se x="]" retorna
    se x="^" retorna
    se x="_" retorna
    se x="`" retorna
    se x="{" retorna
    se x="}" retorna
    se x="~" retorna
    se x="¨" retorna
    se x="§" retorna
    se x="´" retorna
    se x="ª" retorna
    se x="º" retorna
    se x="°" retorna
    se x="¿" retorna

    * encontra posição final da palavra quebrada e junta
    se p="i" desvia @interativo
    seja w pos " " l
    se w <> "0"
        copia k k 1 v
        subtrai w 1
        copia x l 1 w
        concatena k x
        soma w 2
        seja y  tamanho l
        copia l l w y
        retorna
    fim se
    copia k k 1 v
    concatena k l
    * l não pode ser repetido, conteúdo foi adicionado em k
    lê #1 l
    checa c
    se c <> 0 escreve #2 k
    se c <> 0 desvia @acabou
    retorna

    * Junta palavra em modo interativo
    @interativo
    * verifica em que ponto começa a palavra, deixa em j trecho de k até
    * antes do começo da palavra, deixa em z início da palavra quebrada
    seja h pos " " k
    se h <= "0" seja j ""
    se h <= "0" copia z k 1 v
    se h <= "0" desvia @pulo3
    seja h v
    @procurainicpal
    subtrai h 1
    copia x k h h
    se x=" " copia j k 1 h
    se x=" " soma h 1
    se x=" " copia z k h v
    se x=" " desvia @pulo3
    se h > "1" desvia @procurainicpal

    * Encontra término da palavra quebrada, junta em z, restante em q
    @pulo3
    seja w pos " " l
    se w <> "0"
        subtrai w 1
        copia x l 1 w
        concatena z x
        soma w 2
        seja y  tamanho l
        copia q l w y
        desvia @pulo4
    fim se
    seja q ""
    concatena z l

    * Mostra, aguarda e executa a ordem do usuário
    @pulo4
    bipa
    fala z
    lê edita z
    se z="" desvia @pulo5
    seja k j
    concatena k z
    seja l q
    se l <> "" retorna
    * l não pode ser nova linha em branco, conteúdo foi transferido para k
    lê #1 l
    checa c
    se c <> 0 escreve #2 k
    se c <> 0 desvia @acabou
    retorna

    * Usuário desistiu, salva o restante do arquivo sem modificações
    @pulo5
    escreve "Desistiu. Aguarde..."
    escreve #2 k
    escreve #2 l
    @copialinhas
    lê #1 l
    checa c
    se c <> 0 escreve "Aviso: arquivo salvo. Junção de sílabas ao fim das linhas, incompleta."
    se c <> 0 desvia @acabou
    escreve #2 l
    desvia @copialinhas

* Fecha arquivos e finaliza
@acabou
fecha #2
fecha #1
escreve "Feito."
escreve "Alerta: algumas palavras quebradas não são identificadas pelo programa."
se p="a" escreve "Verifique o arquivo salvo, palavras quebradas podem ter sido juntadas incorretamente."
termina mudo