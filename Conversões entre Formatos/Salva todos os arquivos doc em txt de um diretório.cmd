* Salva .doc em .txt de um diretório
* Autor: Tiago Melo Casal
* Em: 27/02/2003



Escreve "Irei salvar deste diretório, cópias de arquivos .doc em .txt"
busca d dir
Escreve Mudo "Buscando arquivos .doc em " &
Escreve Mudo d
Busca a "*.doc"
se a="" Desvia @Fim
Escreve Mudo "Convertendo para .txt o arquivo " &
Escreve Mudo a
Seja n ""
Concatena n d
Concatena n "\"
Concatena n a
Executa "WordPad" &
Repete r 5
Chama @EsperaUm
Fim Repete
@Converte
Bipa
Tela Minimizada
Aciona "Ctrl+A"
Chama @EsperaUm
Digita n
Chama @EsperaUm
Chama @EsperaUm
Seja t Tamanho n
Subtrai t 4
Copia c n 1 t
Concatena c "txt"
Seja n c
Aciona "Alt+A"
Repete r 3
Aciona "Down"
Fim Repete
Aciona "Enter"
Chama @EsperaUm
Digita n &
Chama @EsperaUm
Aciona "Tab"
Aciona "Down"
Aciona "Home"
Aciona "Down"
Aciona "Down"
Aciona "Tab"
Aciona "Enter"
Repete r 3
Chama @EsperaUm
Fim Repete
Aciona "Enter"
Bipa
Tela Normal
Chama @EsperaUm
Busca a Proximo
Se a="" Desvia @Fim
Escreve Mudo "Convertendo para .txt o arquivo " &
Escreve Mudo a
Seja n ""
Concatena n d
Concatena n "\"
Concatena n a
Desvia @Converte

@EsperaUm
Espera 1
Retorna

@Fim
Aciona "Alt+F4"
Termina Mudo
