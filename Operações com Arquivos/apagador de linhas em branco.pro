* Script que remove linhas em branco de um arquivo
* Autor: Tiago Melo Casal, Antonio Borges e Patrick Barbosa
* Em: 19/02/2002
* Atualizado em: 15/03/2004
escreve "Apagador de linhas em branco"
bipa

o = pedeOpcao()
Se o="#27"
               escreve
        escreve "Desistiu..."
        termina
fim se

abreArquivos()

o = maiusc(o)
se não (o="A" ou o="M" ou o="U")
        escreve
        escreve "opção inválida: " o
        termina
fim se

se o = "A"
        apagaTodasBrancas()
senao se o = "U"
        deixaUmaBranca()
senao se o = "M"
        apagaMetadeBrancas()
fim se

fechaArquivos()

escreve
escreve "Fim do processamento"
termina

*********************************************
funcao pedeOpcao
@repede
        escreve
        escreve "Qual a opção? " &
        lê mudo o &
        se o[1] <> "#" escreve o[1]

        se o="#0#66"
            falaHora()
            desvia @repede
        fim se

        se o="#0#101"
            faladia()
            desvia @repede
        fim se

        se o="#0#67" ou o="#0#72" ou o="#0#80"
                Menu Cria 1 5 59 7
                Menu Adiciona "a - Remove todas as linhas em branco"
                Menu Adiciona "m - Substitui mais de uma linha em branco, pela         sua metade"
                Menu Adiciona "u - Substitui várias linhas em branco, por uma só"
                menu Executa opmenu o z
                Menu Termina
                escreve
                se o <> "#27"
                        o = ["#27", "a", "m", "u", "#27"][opmenu]
                fim se
        fim se
        retorna o
fim funcao

*********************************************
funcao abreArquivos()
        escreve "Informe o nome do arquivo original"
        lê nomeArq
        se nomeArq = "" 
                escreve    
                escreve "Desistiu..."
                termina
        fim se  

        Abre #1 nomeArq

        escreve "Informe o nome do arquivo destino. Enter, mantêm o mesmo nome:"
        Escreve nomeArq
        lê nomeSaida
        se nomeSaida=""
                Seja nomeSaida = nomeArq
                abre #2 nomeSaida + ".$$$" &
        senão
                abre #2 nomeSaida &
        fim se

fim funcao

*********************************************
funcao fechaArquivos()
        fecha #1
        fecha #2
        se nomeArq = nomeSaida
                remove nomeArq
                renomeia nomeArq+".$$$" nomeArq
        fim se
fim funcao

*********************************************
funcao apagaTodasBrancas()
        c = 0
        enquanto c = 0
                lê #1 l
                checa c
                se c = 0 e l <> ""
                        escreve #2 l
                fim se
        fim enquanto
        Fecha #1
fim funcao

*********************************************
funcao deixaUmaBranca()
        c = 0
        emBrancas = falso
        enquanto c = 0
                lê #1 l
                checa c
                se c <> 0 quebra

                se l <> ""
                        escreve #2 l
                        emBrancas = falso
                senão se não emBrancas
                        escreve #2 ""
                        emBrancas = verdadeiro
                fim se
        fim enquanto
        Fecha #1
fim funcao

*********************************************
funcao apagaMetadeBrancas()
        c = 0
        emBrancas = falso
        enquanto c = 0
                lê #1 l
                checa c
                se c <> 0 quebra

                se l <> ""
                        escreve #2 l
                        emBrancas = falso
                senão se não emBrancas
                        escreve #2 ""
                        emBrancas = verdadeiro
                senão se emBrancas
                        emBrancas = falso
                fim se
        fim enquanto
        Fecha #1
fim funcao

*********************************************
funcao falaHora()
        seja s hora
        copia h s 1 2
        concatena h " horas e "
        copia m s 4 5
        concatena m "minutos"
        concatena h m
        escreve h
fim funcao

*********************************************
funcao falaDia()
        seja d dia
        seja t data
        concatena d "  "
        copia r t 1 2
        concatena r " de "
        concatena d r
        copia m t 4 5
        substitui m "01" "janeiro de "
        substitui m "02" "fevereiro de "
        substitui m "03" "março de "
        substitui m "04" "abril de "
        substitui m "05" "maio de "
        substitui m "06" "junho de "
        substitui m "07" "julho de "
        substitui m "08" "agosto de "
        substitui m "09" "setembro de "
        substitui m "10" "outubro de "
        substitui m "11" "novembro de "
        substitui m "12" "dezembro de "
        concatena d m
        copia a t 7 10
        concatena d a
        escreve d
fim funcao
