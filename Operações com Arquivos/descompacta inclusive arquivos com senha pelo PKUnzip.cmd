* Descompacta um arquivo usando pkunzip.exe
* o pkunzip.exe deve estar no diretório "\windows" ou no diretório
* deste script.
* Autor: Neno Henrique Albernaz
* Em 21/12/2001
* Modificado em: 07/01/2002
* A modificação foi a entrada da opção de descompactar arquivos com senha.

escreve "Descompactador Pkunzip"
chama @pegaOrigemDestino
chama @montaLinhaComando
escreve "Aguarde"
chama @descompactaArquivo
@fim
termina mudo

************************************************************************

@pegaOrigemDestino
escreve "Digite o arquivo a descompactar (origem)"
le o
se o="" escreve "Desistiu"
se o="" desvia @fim
escreve "Digite o diretório de destino"
le d
se d="" escreve "Desistiu"
se d="" desvia @fim
escreve "O arquivo possui senha (s/n)?"
le r&
se r="s" chama @pegaSenha
retorna

************************************************************************

@pegaSenha
escreve "Digite a senha"
le s
se s="" escreve "Desistiu"
se s="" desvia @fim
retorna

************************************************************************

@montaLinhaComando
se r="s" chama @juntaOrigemDestinoSenha
se r<>"s" chama @juntaOrigemDestino
retorna

************************************************************************

@juntaOrigemDestino
seja p "command /c pkunzip -do "
concatena p o
concatena p " "
concatena p d
retorna

************************************************************************

@juntaOrigemDestinoSenha
seja p "command /c pkunzip -dos"
concatena p s
concatena p " "
concatena p o
concatena p " "
concatena p d
retorna

************************************************************************

@descompactaArquivo
executa p
escreve "Arquivo descompactado"
aciona "alt+f4"
retorna
