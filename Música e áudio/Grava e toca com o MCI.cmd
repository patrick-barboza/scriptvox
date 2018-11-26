* Script que usa o MCI para tocar, gravar sons, etc
* Autor: Tiago Melo Casal
* Em: 25/02/2003



Escreve "MCI Script"
Escreve
@OQueDeseja
Escreve "O que deseja?"
Lê p &
Se p="g" Desvia @Gravar
Se p="t" Desvia @Tocar
Se p="#27" Termina Mudo
Desvia @OQueDeseja

@Gravar
Escreve "As opções de gravação são:"
Escreve "C - Grava de CD para MP3"
Escreve "G - Grava um som qualquer"
Escreve "Que opção de gravação?"
Lê p &
Se P="C" Desvia @CdMp3
Se p="g" Desvia @GravaUmSom
Se P="#27" Desvia @OQueDeseja
Desvia @Gravar

@CdMp3
MCI m "Open CDAudio"
Se m < "1" MCI m "Open CDAudio"
Se m < "1"
Escreve "Não foi possível abrir o Dispositivo CDAudio"
Desvia @Gravar
Fim Se
Escreve "Coloque o CD e tecle Enter"
Lê
MCI m "Set CDAudio Door Closed"
MCI m "status cdaudio Ready"
Se m="false" MCI v "Status CDAudio Media Present"
Se v="true" Escreve "Erro na leitura do CDAudio"
Se v="false" Escreve "Não há CD no driver"
Se m="false" Desvia @Gravar
Escreve "Gravo em que arquivo?"
Lê a
Se a="" Desvia @Gravar
MCI m "Status CDAudio Number of Tracks"
Seja n m
Escreve "Há " &
Escreve n &
Escreve " faixas, no CD-Áudio presente."
Escreve "Começo a gravar apartir de qual faixa?"
Lê i
Se i="" Escreve "Desistiu."
Se i="" Desvia @Gravar
MCI m "Set CDAudio Time Format TMSF"
Seja t "Play CDAudio "
Concatena t "From "
Se i=n Concatena t i
Se i=n Desvia @InícioDaGravação
Escreve "r - Grava o restante das faixas, ou S - somente essa?"
Lê p &
Se p="s"
Concatena t i
Concatena t " To "
Soma i 1
Concatena t i
Senão
Se p="r"
Concatena t i
Fim Se
@InícioDaGravação
MCI m "Status CDAudio Mode"
Se m="paused"
MCI m "Stop CDAudio"
MCI m "Status CDAudio Mode"
Senão
Se m="plaing"
MCI m "Stop CDAudio"
MCI m "Status CDAudio Mode"
Senão
Se m <> "stopped"
MCI m "Stop CDAudio"
MCI m "Status CDAudio Mode"
Fim Se
Se m <> "stopped"
Escreve "Erro: Não conseguir parar o CDAudio. Retorno: " &
Escreve m
Escreve "Não irei prosseguir."
Desvia @Gravar
Fim Se
MCI m "Open New Type WaveAudio Alias MeuSom"
Se m < "1" Escreve "Não conseguir criar alias MeuSom para WaveAudio"
Se m < "1" Desvia @Gravar
MCI m "set MeuSom time format ms bitspersample 16 channels 2 samplespersec 40100"
MCI m "Record MeuSom"
MCI m t
@ObservaTeclado
Observa Teclado t
Se t="0" Desvia @ObservaTeclado
Lê p &
Se p="#27" Desvia @FinalizaGravação
Se P="#13" Desvia @FinalizaGravação
Desvia @ObservaTeclado
@FinalizaGravação
MCI m "Stop MeuSom"
MCI m "Stop CDAudio"
Seja s "Save MeuSom "
Concatena s a
MCI m s
MCI m "Close CDAudio"
MCI m "Close MeuSom"
Termina Mudo


@GravaUmSom
Escreve "Gravo em que arquivo?"
Lê a
Se a="" Desvia @Gravar
MCI m "Open New Type WaveAudio Alias MeuSom"
Se m < "1" Escreve "Não conseguir criar alias MeuSom para WaveAudio"
Se m < "1" Desvia @Gravar
MCI m "set MeuSom time format ms bitspersample 16 channels 2 samplespersec 40100"
Escreve "Precione I - para Iniciar a gravação, P - Para Pausar,"
Escreve "F - Para Finalizar e ESC - Cancela"
@IPF
Observa Teclado t
Se t="0" Desvia @IPF
Lê p &
Se p="i" MCI m "Record MeuSom"
Se p="p" Mci m "Pause MeuSom"
Se p="f" Desvia @GravaArquivo
Se p="#27" MCI m "Stop MeuSom"
Se p="#27" MCI m "Close MeuSom"
Se p="#27" Desvia @Gravar
Desvia @IPF
@GravaArquivo
MCI m "Stop MeuSom"
Seja s "Save MeuSom "
Concatena s a
MCI m s
MCI m "Close MeuSom"
Termina Mudo


@Tocar
Escreve "As opções para tocar são:"
Escreve "D - Toca todo um diretório"
Escreve "Que opção para tocar?"
Lê p &
Se P="d" Desvia @Diretório
Se P="#27" Desvia @OQueDeseja
Desvia @Tocar
@Diretório
Escreve "Digite o caminho do diretório, o qual será tocado os sons:"
Lê d
Se d="" Desvia @Tocar
Busca a Dir
Dir Troca d
remove "C:\Windows\Temp\bmwms.tmp" &
Abre #1 "C:\Windows\Temp\bmwms.tmp" &
Busca b "*.*"
Enquanto b <> ""
Se b *=".mid" Escreve #1 b
Se b *= ".mp3" Escreve #1 b
Se b *= ".wav" Escreve #1 b
Busca b Proximo
Fim Enquanto
@FechaArq
Fecha #1
@Play
Abre #1 "C:\Windows\Temp\bmwms.tmp"
Lê #1 l
Seja t """
Concatena t d
Concatena t "\"
Concatena t l
Concatena t """
Seja o "Open "
Concatena o t
MCI m o
Seja p "Play "
Concatena p t
Mci m p
Lê
Seja s "Stop "
Concatena s t
Mci m s
Seja c "Close "
Concatena c t
Mci m c
@FimTocar
Fecha #1
Remove "C:\Windows\Temp\bmwms.tmp" &
Dir Troca a
Termina Mudo
