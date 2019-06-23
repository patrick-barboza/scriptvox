*Apresentação
escreve "Script : TESTAR ARQUIVOS CONVERTIDOS"
escreve mudo "Autor: Bernard Condorcet"
escreve ""

*Variáveis
*Programa a ser utilizado
    p := "c:\winvox\midiavox.exe "
*Diretório de trabalho
    d := "c:\winvox\cdmp3\wavmp3"

*Procedimentos
telaLimpa()
testaAplicativo()
testaDiretorio()
inicioTeste()
termina "Script terminado"

*--------------------------------------------------------*

função telaLimpa ()
    cor 14
    fundo 1
    tela limpa
fim função

função testaAplicativo ()
    busca x p
    se x = ""
        escreve "O programa MIDIAVOX não foi encontrado em seu sistema"
        termina "Script cancelado"
    fim se
fim função

função testaDiretorio()
    busca x d
    se d = ""
        escreve "Diretório de trabalho não existe"
        termina "Script cancelado"
    senão
        dir troca d
    fim se
fim função

função inicioTeste()
    busca a "*.MP3"
    se a = ""
        termina "O diretório não contem arquivos tipo MP3"
    fim se
    enquanto a <> ""
        seja a TRIM a
        escreve "Irei abrir o arquivo : "&
        escreve a
        auxiliar := p + a
        executa auxiliar
        bipa
        bipa
        busca a PROXIMO
    fim enquanto
    escreve "Último arquivo"
    termina "Script terminado"
fim função
