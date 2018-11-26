* Muda as letras de nome de arquivos de um diretório de minúsculas para
* maiúsculas
* Autor: Tiago Melo Casal
* Em: 10/05/2004



Busca o Dir
Escreve "Digite o caminho do diretório, cujo os arquivos passarei seus"
Escreve "nomes de minúsculas para maiúsculas:"
Lê d
Se d="" Seja d o
Dir Troca d
Busca a "*.*"
@ProcuraArquivos
Se a="" Desvia @Termino
Seja t Maiusc a
Renomeia a t
Busca a Proximo
Desvia @ProcuraArquivos

@Termino
Escreve "Feito!"
Dir Troca o
Termina Mudo
