*Apresentação
escreve "Script : LAME versão 3.92 MMX"
escreve mudo "Consulte: http://www.mp3dev.org"
escreve mudo "Autor: Bernard Condorcet"
escreve ""

*Variáveis
*Programa a ser utilizado
    p := "c:\windows\lame.exe"
*Linha de comando / parâmetros a serem utilizados
    l := "command /c c:\windows\lame -h"
*Diretório de trabalho
    d := "c:\winvox\cdmp3\wavmp3"

*Procedimentos
telaLimpa()
testaConversor()
testaDiretorio()
inicioConversao()
termina "Script terminado"

*--------------------------------------------------------*

função telaLimpa ()
    cor 14
    fundo 1
    tela limpa
fim função

função testaConversor ()
    busca x p
    se x = ""
        escreve "O programa conversor MP3 não está instalado em seu sistema"
        termina "Script cancelado"
    fim se
fim função

função testaDiretorio ()
    busca x d
    se d = ""
        escreve "Diretório de trabalho não existe"
        escreve "Script cancelado"
        termina mudo
    senão
        dir troca d
    fim se
fim função

função inicioConversao ()
    busca a "*.WAV"
    se a = ""
        termina "O diretório não contem arquivos tipo WAV"
    fim se
    enquanto a <> ""
        escreve "Aguarde, irei converter o arquivo : "&
        escreve a
        auxiliar := l + " "
        auxiliar := auxiliar + a
        a := maiusc (a)
        SUBSTITUI a ".WAV" ".MP3"
        auxiliar := auxiliar + " "
        auxiliar := auxiliar + a
        executa auxiliar
        bipa 1
        busca a PROXIMO
    fim enquanto
    escreve "Arquivo(s) gerado(s) com sucesso"
    termina "Script terminado"
fim função
