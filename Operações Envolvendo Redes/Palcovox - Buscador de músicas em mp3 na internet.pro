* Script: Palco/vox - Buscador de músicas em mp3 na internet
* Autor: Gustavo Fernandes
* Contato: gt.fernandes16@gmail.com
* Criado em: Qua 22/03/2017

* Constantes
* Versão do programa
PROGRAMA_VERSAO = "1.0"

* Início
internet inicia
busca d dir "downloads"
se d = "" então dir cria "downloads"
dir troca "downloads"
tela limpa
toca "C:\winvox\som\voxnews\EF_NEINIC.WAV"
escreve "Palco/vox - Versão " + PROGRAMA_VERSAO
escreve "Buscador de músicas em mp3 na internet"
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
    resultado := FazPesquisa(música + " site:palcomp3.com")
    se (resultado = indefinido) então
      escreve "Não foi encontrado nenhum resultado para esta música")
      continua
      fim se

    escreve "Total de resultados encontrados: " + tamanho(resultado)
    escreve "Listando os resultados encontrados..."
    menu cria 10 10 tamanho(resultado) 60
    para item em resultado
      menu adiciona item.descrição
      fim para

    @SelecionaMusica
  escreve "Selecione uma música abaixo:"
    menu executa número letra texto
    opcao := 0
    letra := maiusc(letra)
    se (letra = "#27") então continua
    se (letra = "#0#59") então
      escreve "As opções são:"
      escreve "T ou ENTER - Toca a música pelo media player"
      escreve "B - Faz o download da música"
      escreve "N - Abre a página da música no palco mp3 pelo navegador externo"
      desvia @SelecionaMusica
      fim se
    se (letra = "N") então
      escreve "Abrindo página do palco mp3 pelo navegador..."
      executa resultado[número - 1].url
      desvia @SelecionaMusica
      fim se

    se (letra = "T") então opcao := 1
    se (letra = "B") então opcao := 2
    se (opcao >= 1 e opcao <= 3) então
      ExecutaLink(resultado[número - 1].url, opcao)
      desvia @SelecionaMusica
      fim se

    se (letra = "#13") então
      ExecutaLink(resultado[número - 1].url, 1)
      desvia @SelecionaMusica
      fim se

    escreve "Opção indisponível!"
    desvia @SelecionaMusica
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
função input(pergunta)
  local linha

  toca "C:\winvox\som\voxnews\EF_NEOQUE.WAV"
  escreve pergunta
  le linha
    toca "C:\winvox\som\METROVOX\EFEITOS\BIP1.WAV"
  retorna linha
  fim função


* ------------------------------------------------------------------------
função ExecutaLink(link, modo)
  conecta ssl #1 "palcomp3.com" 443
  escreve #1 "GET " + link + " HTTP/1.0"
  escreve #1 "Host: palcomp3.com"
  escreve #1 "User-Agent: webvox 5.5"
  escreve #1 "UA-CPU: X86"
  escreve #1 ""
  le #1 linha
  se (pos("200", linha) = 0) então
    escreve "Esta música está indisponível para download!"
    fecha #1
    retorna
    fim se

  texto := ""
  enquanto (pos("</html>", linha) = 0) faça
    texto := texto + linha
    le #1 linha
    fim enquanto
  fecha #1

  converte texto de UTF8
  nome := texto[pos("<title>", texto) .. tamanho(texto)]
  nome := nome[8 .. pos("</title>", nome) - 1]
  nome := trim(nome[1 .. pos("-", nome) - 1])
  texto := texto[pos("</title>", texto) .. tamanho(texto)]
  url := pos(": """ + nome, texto)
  se (url = 0) então
    escreve "O link para esta música está indisponível!"
    retorna
    fim se

  texto := texto[url .. tamanho(texto)]
  texto := texto[pos("duration", texto) .. tamanho(texto)]
  duração := texto[pos(":", texto) + 2 .. tamanho(texto)]
  duração := duração[2 .. pos(",", duração) - 2]
  substitui duração "PT" ""
  substitui duração "M" " minutos e "
  substitui duração "S" " segundos"
  url := texto[pos("audio", texto) .. tamanho(texto)]
  url := url[pos(": ", url) + 2 .. tamanho(texto)]
  url := url[2 .. pos(",",url) - 2]
  url := "http:" + url

  escreve
  escreve "Dados da música:"
  escreve "Música: " + nome
  escreve "Duração: " + duração
  escreve
  se (modo = 1) então
    escreve "Reproduzindo a música com o media player, por favor aguarde..."
    executa ("wmplayer " + url)
  senão se (modo = 2) então
    escreve "Baixando a música, por favor aguarde..."
    arquivo :=  nome + ".mp3"
    substitui url "http://" ""
    baixa url arquivo x
  senão
    executa url
    fim se
  fim função
