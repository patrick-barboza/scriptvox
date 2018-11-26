* Ve se um certo servidor pop3 está ativo
* Autor: Antonio e Junior
* Em 27/7/2001

escreve "Informe o provedor de pop3 a testar"
lê p

internet INICIA
conecta #1 ssl p 995

repete v 10
    observa #1 s
    se s <> "0" desvia @chegoualgo
    escreve "esperando mais um segundo"
    espera 1
fim repete

escreve "Servidor está mudo, vou-me desconectar"
desvia @fim

@chegoualgo
    le #1 x
    escreve "Servidor falou o seguinte"
    escreve x

@fim
   fecha #1
   internet TERMINA
   termina
