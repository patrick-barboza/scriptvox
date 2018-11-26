* Renomeia um arquivo
* Autor: Antonio e Junior
* Em 9/11/2000

* Descrição das variáveis
* a - nome do arquivo antigo
* n - nome do arquivo novo
* x - indica se arquivo existe

escreve "Informe o nome antigo do arquivo"
le a
busca x a
se x <> "" desvia @ok
   escreve "Arquivo não existe"
   termina

@ok
escreve "Informe o nome do novo arquivo"
le n

renomeia a n

escreve "Nome trocado"
