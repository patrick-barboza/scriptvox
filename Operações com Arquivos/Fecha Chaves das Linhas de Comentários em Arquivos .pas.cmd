* Fecha Chaves das linhas de comentários dos arquivos .pas, para serem
* compilados pelo Free Pascal Compiller
* Em: 03/02/2003
* Autor: Tiago Melo Casal



@Início
Escreve "Qual arquivo .pas devo verificar se há comentários não " &
Escreve "fechados e fechá-los?"
Lê a
Se a="" Escreve "Vou processar todos arquivos do diretório atual."
Se a="" seja n 1
Se a > "" Seja n 0

@AbreArquivo
Se n=0
Abre #1 a
Remove "C:\$$$.$$$" &
Abre #2 "C:\$$$.$$$" &
Desvia @ProcuraAbreChave
Fim Se
Busca a "*.pas"
Se a="" Escreve "Não existe neste diretório arquivos .pas"
Se a="" Termina Mudo
Abre #1 a
Remove "C:\$$$.$$$" &
Abre #2 "C:\$$$.$$$" &
Bipa 1

@ProcuraAbreChave
Lê #1 l
Checa c
Se c <> 0 Desvia @FimDoArquivo
Copia i l 1 1
Se i="{" Desvia @ProcuraFechaChave
Escreve #2 l
Desvia @ProcuraAbreChave

@ProcuraFechaChave
Seja t Tamanho l
Copia f l t t
Se f="}" Escreve #2 l
Se f="}" Desvia @ProcuraAbreChave
Concatena l "}"
Escreve #2 l
Desvia @ProcuraAbreChave

@AbrePróximoArquivo
Busca a Proximo
Se a="" Escreve "Operação concluída."
Se a="" Termina Mudo
Abre #1 a
Remove "C:\$$$.$$$" &
Abre #2 "C:\$$$.$$$" &
Bipa 1
Desvia @ProcuraAbreChave

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
