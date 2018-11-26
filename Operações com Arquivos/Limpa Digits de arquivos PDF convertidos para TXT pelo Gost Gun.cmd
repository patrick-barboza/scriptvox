* Limpa os digits dos arquivos convertidos de PDF para TXT pelo Gost Gun
* Autor: Tiago Melo Casal
* Em: 22/04/2004



Seja t "C:\$$$.$$$"
Escreve "Qual arquivo convertido pelo Gost Gun de PDF para TXT" &
Escreve "retirarei os Digits:"
Lê n
Se n="" Escreve "Desistiu"
Se n="" Termina Mudo
Abre #1 n
Remove t &
Abre #2 t &
@Leia
Lê #1 l
Checa c
Se c <> 0 Desvia @Término
Se l=" #" Desvia @Leia
Se l="#" Desvia @Leia
Se l=" #" Desvia @Leia
Se l="#" Desvia @Leia
Se l="# " Desvia @Leia
Se l="# #" Desvia @Leia
Se l="# # " Desvia @Leia
Se l="# ##" Desvia @Leia
Se l="# ## " Desvia @Leia
Se l="# ###" Desvia @Leia
Se l="# ### " Desvia @Leia
Se l="# ####" Desvia @Leia
Se l="# #### " Desvia @Leia
Escreve #2 l
Desvia @Leia
@Término
Fecha #1
Fecha #2
Remove n &
Renomeia t n
Escreve "Concluído"
Termina Mudo
