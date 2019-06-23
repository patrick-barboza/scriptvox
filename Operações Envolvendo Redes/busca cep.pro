; Script: Busca CEP
; Autor: Gustavo Fernandes
; Descrição: Busca e informa o endereço de um determinado CEP
; Em: Quin 30/03/2017

; Variáveis globais
ARQUIVO_TMP = "busca-cep.$$$"

; Início do programa
escreve "Busca CEP - Versão 1.0"
escreve "Buscador de endereços a partir de um CEP na internet"
escreve mudo "AUTOR: Gustavo Fernandes <gt.fernandes16@gmail.com>"
escreve
inicia_programa()

; Desenvolvimento
função inicia_programa()
  sair = falso
  enquanto (sair = falso) faça
    tela limpa
    escreve "Informe o CEP: " &
    le cep
    se (cep = "") então
      escreve "Fim do programa."
    sair = verdadeiro
    senão
    resultado = busca_cep(cep)
    se (resultado = indefinido) então
      escreve "Não foi possível encontrar o endereço do CEP informado!"
      continua
      fim se
      mostra_cep(resultado)
      fim se
    fim enquanto
  fim função

; ------------------------------------------------------------------------

função busca_cep(cep)
  conecta #1 "viacep.com.br" 80
  escreve #1 "GET http://viacep.com.br/ws/" + cep + "/json/ HTTP/1.0"
  escreve #1 "Host: viacep.com.br"
  escreve #1 "UA-CPU: X86"
  escreve #1 "User-Agent: Webvox 5.5"
  escreve #1 "Accept-Language: pt-br"
  escreve #1 ""
  le #1 linha
  se (pos("200", linha) = 0) então
    fecha #1
    retorna indefinido
    fim se

  resposta = ""
  le #1 linha
  checa fim_pagina
  enquanto (fim_pagina = 0) faça
    resposta = resposta + linha
    le #1 linha
    checa fim_pagina
    fim enquanto
  fecha #1

  se (pos("{", resposta) = 0) então retorna indefinido
  se (pos("erro", resposta) > 0) então retorna indefinido
  resposta = resposta[pos("{", resposta) .. tamanho(resposta)]
  converte resposta de UTF8
  remove ARQUIVO_TMP &
  abre #1 ARQUIVO_TMP &
  escreve #1 resposta
  fecha #1

  resultado = conteudo(ARQUIVO_TMP, "JSON")
   remove ARQUIVO_TMP

  retorna resultado
  fim função

; ------------------------------------------------------------------------
função mostra_cep(json)
  escreve "Dados do CEP:"
  form cria
  para chave em chaves(json) faça
    form campo chave json[chave]
    fim para
  form visualiza
  fim função
