* Apaga o Log dos arquivos .pp e .inc, do Free Pascal, para que sejam
* compilados pelo Delphi
* Em: 04/02/2003
* Autor: Tiago Melo Casal



@Início
Escreve "Qual arquivo deseja que seja apagado o Log?"
Lê a
Se a="" Escreve "Será processado todos os arquivos do diretório atual."
Se a="" seja n 1
Se a > "" Seja n 0

@AbreArquivo
Se n=0
Abre #1 a
Remove "C:\$$$.$$$" &
Abre #2 "C:\$$$.$$$" &
Desvia @ProcuraLog
Fim Se
Busca a "*.*"
Se a="" Escreve "Não existe neste diretório arquivos .pp e .inc"
Se a="" Termina Mudo
Se a *= ".inc"
Abre #1 a
Remove "C:\$$$.$$$" &
Abre #2 "C:\$$$.$$$" &
Bipa 1
Desvia @ProcuraLog
Senão
Se a *= ".pp"
Abre #1 a
Remove "C:\$$$.$$$" &
Abre #2 "C:\$$$.$$$" &
Bipa 1
Desvia @ProcuraLog
Fim Se
Desvia @AbreArquivo

@ProcuraLog
Lê #1 l
Checa c
Se c <> 0 Desvia @FimDoArquivo
Seja p l
Lê #1 l
Enquanto Não l =* "  $Log:"
Escreve #2 p
Seja p l
Lê #1 l
Checa c
Se c <> 0 Escreve #2 p
Se c <> 0 Desvia @FimDoArquivo
Fim Enquanto
Desvia @FimDoArquivo

@AbrePróximoArquivo
Busca a Proximo
Se a="" Escreve "Operação concluída."
Se a="" Termina Mudo
Se a *= ".inc"
Abre #1 a
Remove "C:\$$$.$$$" &
Abre #2 "C:\$$$.$$$" &
Bipa 1
Desvia @ProcuraLog
Senão
Se a *= ".pp"
Abre #1 a
Remove "C:\$$$.$$$" &
Abre #2 "C:\$$$.$$$" &
Bipa 1
Desvia @ProcuraLog
Fim Se
Desvia @AbrePróximoArquivo

@FimDoArquivo
Fecha #1
Fecha #2
Remove a &
Renomeia "C:\$$$.$$$" a
Se n="1" Bipa
Se n="1" Desvia @AbrePróximoArquivo
Escreve "Arquivo verificado."
Escreve "Deseja verificar outro arquivo?"
Lê a &
Se a="s" Desvia @Início
Termina Mudo
