* Script para Velox - Rio de Janeiro

escreve "Autenticação Velox"
escreve "Conta: "
le $conta
escreve "Senha: "
le senha $senha
escreve "Provedor"
le $provedor

* executa internet explorer, espera 30 segundos e fecha a janelinha
* de popup teclando tab e depois enter

executa "iexplore www.veloxzone.com.br" &
espera 30

aciona "TAB"
espera 1
aciona "ENTER"
espera 1

MSAA monitora

* volta cursor até chegar na palavra OK

@esperaOK

    * garante que não há nenhuma informação antiga na fila
    MSAA checa x
    se x <> 0 desvia @esperaOK

    * dá um shift tab e ve se chegou na palavra "OK"
    aciona "SHIFT+TAB"
    espera 1
    MSAA checa x
    MSAA nome $nome

    se $nome <> "OK" desvia @esperaOK

MSAA FIM

* volta três tabs e digita conta, senha e inicial do provedor depois enter

aciona "SHIFT+TAB"
aciona "SHIFT+TAB"
aciona "SHIFT+TAB"

digita $conta &
aciona "TAB"
digita $senha &
aciona "TAB"

copia p $provedor 1 1
digita p &
aciona "TAB"
aciona "ENTER"

espera 2

termina
