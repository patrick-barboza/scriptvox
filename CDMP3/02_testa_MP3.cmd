@inicia

*Apresentação
escreve "Script : TESTAR ARQUIVOS CONVERTIDOS"
escreve mudo "Autor: Bernard Condorcet"
escreve ""

*Variáveis
*Programa a ser utilizado
    seja p "c:\winvox\midiavox.exe "
*Diretório de trabalho
    seja d "c:\winvox\cdmp3\wavmp3"

*Procedimentos
chama @telaLimpa
chama @testaAplicativo
chama @testaDiretorio
chama @inicioTeste
termina mudo

*--------------------------------------------------------*

@telaLimpa
    cor 14
    fundo 1
    tela limpa
retorna

@testaAplicativo
    busca x p
    se x = ""
        escreve "O programa MIDIAVOX não foi encontrado em seu sistema"
        escreve "Script cancelado"
        termina mudo
    fim se
retorna

@testaDiretorio
    busca x d
    se d = ""
        escreve "Diretório de trabalho não existe"
        escreve "Script cancelado"
        termina mudo
    senão
        dir troca d
    fim se
retorna

@inicioTeste
    busca a "*.MP3"
    se a = ""
        escreve "O diretório não contem arquivos tipo MP3"
        retorna
    fim se
    enquanto a <> ""

        seja a TRIM a
        escreve "Irei abrir o arquivo : "&
        escreve a

        CONCATENA p a
        executa p

        bipa
        bipa

        seja p "c:\winvox\midiavox.exe "

        busca a PROXIMO

    fim enquanto

    escreve "Último arquivo"
    escreve "Script terminado"
retorna
