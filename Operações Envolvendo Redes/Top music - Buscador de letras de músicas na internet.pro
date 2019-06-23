* Script: Top music - Buscador de letras de músicas na internet
* Autor: Gustavo Fernandes
* Contato: gt.fernandes16@gmail.com
* Colaboradora: Nádyla Natálya
* Criado em: Ter 21/03/2017

* Constantes
* Arquivo temporário para tratamento da letra da música
ARQUIVO_TMP = "letras-mus.txt"

* Constante para indicar quebra de linha
CRLF = chr(13) + chr(10)

* Versão do programa
PROGRAMA_VERSAO = "1.1"

* Variáveis globais
tempoAtual := 0

* Início
tela limpa
toca "C:\winvox\som\voxnews\EF_NEINIC.WAV"
escreve "Top Music - versão " + PROGRAMA_VERSÃO
escreve "Buscador de letras de músicas na internet..."
escreve mudo "Autor: Gustavo Fernandes <gt.fernandes16@gmail.com>"
escreve
IniciaPrograma()

* Desenvolvimento do programa
função IniciaPrograma()
  local resultado, item, número, letra, texto, música

  enquanto (verdadeiro) faça
    tela limpa
    música := input("Informe o nome da música ou um trecho de sua letra:")
    se (música = "") então
      escreve "Fim do programa"
      toca "C:\winvox\som\cdmp3\CDSAI.wav"
      termina mudo
      fim se

    escreve "Pesquisando, por favor aguarde..."
    resultado := FazPesquisa(música + " site:letras.mus.br")
    se (resultado = indefinido) então
      escreve "Não foi encontrado nenhum resultado de letra para esta música!"
      continua
      fim se

    escreve "Total de resultados encontrados: " + tamanho(resultado)
    escreve "Listando os resultados encontrados..."
    menu cria 10 10 tamanho(resultado) 60
    para item em resultado
      menu adiciona item.descrição
      fim para

    @SelecionaLetra
  escreve "Selecione uma letra de música abaixo"
    menu executa número letra texto
    letra := maiusc(letra)
    se (letra = "#27") então continua
    se (letra = "#0#59") então
      escreve "As opções são:"
      escreve "E ou ENTER - lê a letra da música pelo edivox"
      escreve "L - Faz uma leitura rápida"
      escreve "I - Informa o link da página que contém a letra da música"
      desvia @SelecionaLetra
      fim se
    se (letra = "I") então
      escreve "Editore o link da letra com as setas: " &
      le edita resultado[número - 1].url
      desvia @SelecionaLetra
      fim se

    opcao := 0
    se (letra = "L") então opcao := 1
    se (letra = "E" ou letra = "#13") então opcao := 2
    se (opcao >=1 e opcao <= 2) então
      ObtemLetra(resultado[número - 1].url, opcao)
      desvia @SelecionaLetra
      fim se

    escreve "Opção indisponível!"
    desvia @SelecionaLetra
    fim enquanto
  fim função

* ------------------------------------------------------------------------
função FazPesquisa(termo)
  local resultado, texto, linha, descrição, url

  converte termo para url
  conecta #1 "google.com.br" 80
  escreve #1 "GET http://www.google.com.br/search?q=" + termo + " HTTP/1.0"
  escreve #1 "Host: google.com.br"
  escreve #1 "User-Agent: webvox 5.5"
  escreve #1 "UA-CPU: X86/"
  escreve #1 "Accept-Language: pt-br"
  escreve #1 ""
  le #1 linha
  se (pos("200", linha) = 0) então
    fecha #1
    retorna indefinido
    fim se

  texto := ""
  enquanto (pos("</html>", linha) = 0) faça
    texto := texto + linha
    le #1 linha
    fim enquanto
  fecha #1

  se (pos("<h3 ", texto) = 0) então retorna indefinido

  resultado := []
  enquanto (pos("<h3 ", texto) > 0) faça
    texto := texto[pos("<h3 ", texto) .. tamanho(texto)]
    url := texto[pos("/url?", texto) .. tamanho(texto)]
    url := url[pos("=", url) + 1 .. pos("&amp", url) - 1]
    texto := texto[pos("/url?", texto) .. tamanho(texto)]
    texto := texto[pos(">", texto) .. tamanho(texto)]
    descrição := texto[2 .. pos("</a>", texto) - 1]
    substitui descrição "<b>" ""
    substitui descrição "</b>" ""
    substitui descrição "&#8211;" "'"
    substitui descrição "&amp;" "&"
    resultado[] := {"descrição" : descrição, "url" : url}
    texto := texto[pos("</a>", texto) .. tamanho(texto)]
    fim enquanto

  retorna resultado
  fim função

* ------------------------------------------------------------------------
função ObtemLetra(link, modo)
  local texto, linha

  converte link para url
  conecta ssl #1 "letras.mus.br" 443
  escreve #1 "GET " + link + " HTTP/1.0"
  escreve #1 "Host: letras.mus.br"
  escreve #1 "User-Agent: webvox 5.5"
  escreve #1 "UA-CPU: X86"
  escreve #1 "Accept-Language: pt-br"
  escreve #1 ""
  le #1 linha
  se (pos("200", linha) = 0) então
    escreve "Erro ao obter letra para esta música!"
    fecha #1
    retorna
    fim se

  escreve "Baixando letra da música, por favor aguarde..."
  texto := ""
  enquanto (pos("</html>", linha) = 0) faça
    Progresso("Baixando...")
    texto := texto + linha
    le #1 linha
    fim enquanto
  fecha #1

  se (pos("<article>", texto) = 0) então
    escreve "Não foi possível obter letra para esta música!"
    retorna
    fim se

  converte texto de UTF8
  texto := texto[pos("<article>", texto) .. tamanho(texto)]
  texto := texto[pos(">", texto) .. tamanho(texto)]
  texto := texto[2 .. pos("</article>", texto) - 1]
  substitui texto "<p>" ""
  substitui texto "</p>" CRLF
  substitui texto "<br/>" CRLF
  remove ARQUIVO_TMP &
  abre #2 ARQUIVO_TMP &
  escreve #2 texto
  fecha #2

  escreve "a letra da música foi baixada."
  escreve
  se (modo = 1) então
    texto := conteudo(ARQUIVO_TMP)
    remove ARQUIVO_TMP &
    tela limpa
    escreve "Leia a letra da música com as setas:"
    menu cria 10 10 tamanho(texto) 80
    para linha em texto faça
      menu adiciona linha
      fim para
    @leitura
    menu executa número letra texto
    se (letra = "#27") então retorna
    desvia @leitura
    fim se

  escreve "Abrindo o edivox com a letra..."
  executa ("C:\winvox\edivox.exe /l " + ARQUIVO_TMP)
  espera 2
  escreve
    toca "C:\winvox\som\voxnews\EF_NEOQUE.WAV"
  escreve "Você deseja salvar esta letra de música no seu computador? " &
  le resposta &
  se (maiusc(resposta) = "S") então
    arquivo := input("Informe o nome do arquivo onde deverá ser gravado esta letra:")
    se (arquivo = "") então
      escreve "Desistiu!"
      retorna
      fim se

  se (pos(".TXT", maiusc(arquivo)) = 0) então arquivo := arquivo + ".txt"
    remove arquivo &
    replica ARQUIVO_TMP arquivo
    escreve "Ok, arquivo gravado!"
    fim se

  remove ARQUIVO_TMP &
  fim função

* ------------------------------------------------------------------------
função input(pergunta)
  local linha

  toca "C:\winvox\som\voxnews\EF_NEOQUE.WAV"
  escreve pergunta
  le linha
    toca "C:\winvox\som\METROVOX\EFEITOS\BIP1.WAV"
  retorna linha
  fim função

* ------------------------------------------------------------------------

função Progresso(mensagem)
  local tempoDecorrido

  tempoDecorrido := tempo() / 100
  se (tempoDecorrido > tempoAtual) então
    tempoAtual := tempoDecorrido
    toca "C:\winvox\som\METROVOX\EFEITOS\PADRAO1.WAV"
    fim se

  observa teclado teclou
  se (teclou <> 0) então escreve (mensagem)
  fim função
