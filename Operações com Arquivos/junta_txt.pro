**Juntador de arquivos txt
*Autor:  Gabriel Benhur Schuck
*Em 27/08/2017
busca diretorio_default dir "*.*"
folder:=""
escreve "Juntador de arquivos txt"
escreve mudo "Desenvolvido por:  Gabriel Benhur Schuck"
busca diretorio_default dir "*.*"
inicio()

função inicio()
@passo1
escreve "Digite o caminho completo do diretório onde estão os arquivos:"
le pasta
se checar_pasta()=falso
escreve "Esta pasta não existe"
desvia @passo1
fim se
se checar_arquivos_txt()=falso
escreve "Nenhum arquivo txt dentro desta pasta"
desvia @passo1
fim se
@passo2
escreve "Digite o nome do arquivo resultante:"
le arquivo
se arquivo=""
escreve "Terminado"
termina mudo
fim se
se não arquivo*="txt"
concatena arquivo ".txt"
fim se
escreve "Aguarde um momento por favor..."
juntar_txt()
pergunta ("Deseja juntar mais arquivos?")
fim função

função juntar_txt()
total:=0
linhas:=indefinido
ignorados:=0
conteudo_arquivo:=indefinido
dir troca diretorio_default
abre #1 arquivo &
dir troca pasta
busca arquivos "*.txt"
@passo3
enquanto arquivos<>""
conteudo_arquivo=conteudo(arquivos)
linhas=|conteudo_arquivo|
se linhas=0
escreve "O arquivo " arquivos " está vazio. Deseja continuar mesmo assim?"
le o &
se o ="s"
busca arquivos próximo
ignorados=ignorados+1
desvia @passo3
senão
fecha #1
desvia @fim
termina mudo
fim se
senão
contador:=0
enquanto contador <linhas
escreve #1 conteudo_arquivo[contador]
contador=contador+1
fim enquanto
escreve #1
escreve #1
total=total+1
busca arquivos próximo
se arquivos=arquivo quebra
fim se
fim enquanto
fecha #1
@fim
escreve "Operação concluída!"
escreve total "arquivos adicionados, " ignorados " ignorados"

fim função

função  checar_pasta()
se pasta=""
busca folder dir
senão
busca folder dir pasta
se folder=""
retorna falso
senão
dir troca pasta
retorna verdadeiro
fim se
fim se
fim função


função checar_arquivos_txt()
busca arquivos "*.txt"
se arquivos=""
retorna falso
senão
retorna verdadeiro
fim se
fim função

função pergunta(pergunta)
escreve pergunta
le o &
se o ="s" inicio()
escreve "Obrigado. até mais!"
termina mudo
fim função
