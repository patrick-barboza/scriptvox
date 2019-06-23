**Músico virtual - composivox
*Autor:  Gabriel Benhur Schuck
*Criado em 14/07/2017
*atualizado em 15/07/2017

randomiza
executou:=""

importa musicas "banco_musicas/musicas.pro"
escreve mudo "Compositor virtual de música - Composivox"
escreve mudo "Autor:  Gabriel Schuck"
escreve "Olá! Você me chamou?"
escreve "Se o assunto for música, é comigo mesmo. Eu sou um compositor virtual!"
escreve "Vamos brincar?"
@nome
escreve "Qual o seu nome?"
le o
se inteiro(o)
escreve "Você está falando sério?"
escreve "Primeira pessoa que conheço que tem número no nome."
desvia @pergunta
fim se
se o ="" termina mudo
escreve o &
escreve ", "
@pergunta
se executou=verdadeiro desvia @outra
escreve "eu tenho uma composição musical pra você. gostaria de ouvir? Diz que sim, vai!"
le resposta &
se resposta="s"
escreve "Ótimo! " &
@sorteia
r:=rand(3)
se r=0 executou=musicas.musiquinha()
se r=1
escreve "Esta é uma composição singela para as escalas maiores."
escreve "É bem agradável de ouvir e bem fácil de compreender."
escreve "Se você souber o nome das notas, também pode acompanhar, solfejando junto."
escreve "Lá vai!"
executou=musicas.composicao_escala(0)
fim se
se r=2
escreve "Sabe, eu estava ouvindo muita música clássica e " &
escreve "estudando muita teoria musical por esses dias."
escreve "Eu queria ser mais um gênio como aqueles caras lá, tipo Beethoven, "&
escreve "Bach, mozart e tantos outros..."
escreve "Só faltava me debruçar ao piano para sair uma composição do " &
escreve "gênero e, aqui está!"
escreve "Uma peça de arquitetura musical, para mostrar o meu virtuosismo!"
escreve "Bom concerto!"

executou=musicas.virtuose (-2,130,falso)
fim se
fim se
se resposta="n"
escreve "Fiquei triste agora... Vou chorar!"
toca "c:\winvox\Som\PAPOVOX\EFEITOS\CHORO.WAV"
escreve "tchau"
termina mudo
senão
desvia @pergunta
fim se

@outra
escreve "Que tal mais uma composição musical?"
le o &
se o="s"
escreve "Muito bem!"
desvia @sorteia
fim se
se o ="n"
desvia @fim
senão
desvia @outra
fim se

@fim
midi abre 0
midi canal 1
midi instrumento 87
midi inicia 6 0
midi inicia 5 0
espera 300ms
midi para 6 0
midi para 5 0
midi inicia 5 6
midi inicia 4 6
espera 150 ms
midi para 5 6
midi para 4 6
midi inicia 5 7
midi inicia 4 7
espera 150 ms
midi para 5 7
midi para 4 7
midi inicia 5 8
midi inicia 4 8
espera 300 ms
midi para 5 8
midi para 4 8
midi inicia 5 7
midi inicia 4 7
espera 300 ms
midi para 5 7
midi para 4 7
espera 300 ms
midi inicia 5 11
midi inicia 3 7
midi inicia 2 7
midi inicia 5 5
midi inicia 5 2
midi inicia 4 7
midi inicia 4 11
espera 300 ms
midi para 3 7
midi para 2 7
midi para 5 11
midi para 5 5
midi para 5 2
midi para 4 7
midi para 5 11
midi para 4 11
midi inicia 6 0
midi inicia 5 0
midi inicia 5 4
midi inicia 4 0
midi inicia 3 0
midi inicia 2 0

espera 300 ms
midi para 3 0
midi para 2 0

midi para 6 0
midi para 5 0
midi para 5 4
midi para 4 0
espera 500 ms
toca "c:\winvox\Som\PAPOVOX\EFEITOS\FUI.WAV"
escreve "tchau"
midi fecha
termina mudo
