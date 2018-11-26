* Compacta um (ou mais) arquivo(s) usando p pkzip.exe
* o pkzip.exe deve estar no diretório "\windows"
* Autor: Neno Henrique Albernaz
* Em 21/12/2001
* Modificado por: Tiago Melo Casal
* Idéia de: Caldeira (Odin) (Aamon)
* Modificado por Marilza Vieira de Matos* Em: 03/01/2002
* Em 08/05/2002
@comeco
escreve "Compactador Pkzip"
chama @pegaOrigemDestino
escreve "Aguarde"
chama @juntaOrigemDestino1
chama @compactaArquivo
escreve "quer compactar mais arquivos (S/N)?"
le z &
se z="s"
desvia @comeco
@fim
termina mudo

@pegaOrigemDestino
escreve "Digite o arquivo de destino"
escreve "Por exemplo teste.zip"
le d
se d="" escreve "Desistiu"
se d="" desvia @fim
escreve "Digite o caminho e a máscara ou nome do arquivo que deseja compactar"
le o
se o="" escreve "Desistiu"
se o="" desvia @fim
escreve "Quer compactar com senha?"
le r &
se r = "s" desvia @senha
se r <> "s" retorna

@senha
escreve "Digite a senha"
le senha s
se s="" escreve "Desistiu"
se s="" desvia @fim
escreve "Aguarde"
chama @juntaOrigemDestino2
chama @compactaArquivo
desvia @fim

@juntaOrigemDestino1
seja p "command /c pkzip -rPexx "
concatena p d
concatena p " "
concatena p o
retorna

@juntaOrigemDestino2
seja p "command /c pkzip -rPexxs"
concatena p s
concatena p " "
concatena p d
concatena p " "
concatena p o
retorna

@compactaArquivo
executa p
escreve "Arquivo compactado"
retorna
