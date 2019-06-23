*Aventura X-Com
*Uma aventura solo de RPG.
* O texto do jogo, está em outro arquivo, que é recomendado estar no
* diretório onde encontra-se esse arquivo
* Texto adapitado por: Anderson Alves da Fonseca
* Autor: Anderson Alves da Fonseca
* Inicio: 20/09/2004
*termino: 24/09/2004


t := "              Aventura X-Com"


*** Início ***

escreve t
escreve
escreve
escreve "      Bem Vindo!"
bipa
@OpçãoAouC
escreve
escreve "   Tecle A, para que lhe seja apresentado os fatos e personagens"
escreve "   ou tecle C, para pular a apresentação."
lê o &
se o="a" desvia @Apresentação
se o="c" desvia @SuamissãoComeçou
desvia @OpçãoAouC

*** Apresentação ***

@Apresentação
tela limpa
escreve mudo t
escreve
LêTexto ("@apresentação")

*** Começo da missão ***

@SuamissãoComeçou
tela limpa
escreve "    Sua missão começou!"
bipa

@NovaTentativa
tela limpa
escreve mudo t
escreve
LêTexto ("@suamissãocomeçou")
@opções1
escreve
escreve " Se quiser comparecer ao chamado, tecle 1."
escreve " Se quiser denunciar a organização, usando a imprensa como arma, tecle 2."
escreve " Porém, se quiser usar seus contatos na CIA para tentar se livrar da enrascada "
escreve "onde se meteu, tecle 3."
@Esperateclaropção1
lê o &
se o="1" desvia @21
se o="2" desvia @19
se o = "3" desvia @32
se o="#0#59" chama @Ajuda
se o="#0#59" desvia @EsperaTeclarOpção1
se o="#0#60" desvia @NovaTentativa
se o="#0#61" desvia @opções1
se o="#27" desvia @cancelamissão
escreve "   Opção inválida. F1 ajuda"
desvia @EsperaTeclarOpção1

@2
tela limpa
escreve mudo t
escreve
LêTexto ("@2")
desvia @43

@3
tela limpa
escreve mudo t
escreve
LêTexto ("@3")
@opções2
escreve
escreve " Se estiver com o rifle X-COM, tecle 1."
escreve " Se estiver portando a pistola, tecle 2."
@Esperateclaropção2
lê o &
se o="1" desvia @26
se o="2" desvia @2
se o="#0#59" chama @Ajuda
se o="#0#59" desvia @EsperaTeclarOpção2
se o="#0#60" desvia @3
se o="#0#61" desvia @opções2
se o="#27" desvia @cancelamissão
escreve "   Opção inválida. F1 ajuda"
desvia @EsperaTeclarOpção2

@4
tela limpa
escreve mudo t
escreve
LêTexto ("@4")
desvia @25

@5
tela limpa
escreve mudo t
escreve
LêTexto ("@5")
escreve "     Sua missão acaba por aqui."
Finaliza ()

@6
tela limpa
escreve mudo t
escreve
LêTexto ("@6")
desvia @38

@7
tela limpa
escreve mudo t
escreve
LêTexto ("@7")
@opções3
escreve
escreve " Se quiser ir com Kenner Wayne, tecle 1."
escreve " Se quiser ir com Thiago Highlin, tecle 2."
escreve " Se quiser ir com John McMorus, tecle 3."
escreve " Se preferir que eles decidam entre si, tecle 4."
@Esperateclaropção3
lê o &
se o="1" desvia @41
se o="2" desvia @6
se o="3" desvia @20
se o="4" desvia @35
se o="#0#59" chama @Ajuda
se o="#0#59" desvia @EsperaTeclarOpção3
se o="#0#60" desvia @7
se o="#0#61" desvia @opções3
se o="#27" desvia @cancelamissão
escreve "   Opção inválida. F1 ajuda"
desvia @EsperaTeclarOpção3

@8
tela limpa
escreve mudo t
escreve
LêTexto ("@8")
desvia @13

@9
tela limpa
escreve mudo t
escreve
LêTexto ("@9")
desvia @8

@10
tela limpa
escreve mudo t
escreve
LêTexto ("@10")
@opções4
escreve
escreve " Se quiser seguir a sugestão de John McMorus, tecle 1."
escreve " Se não confia nele, e quiser sugerir outra solução, tecle 2."
@Esperateclaropção4
lê o &
se o="1" desvia @17
se o="2" desvia @33
se o="#0#59" chama @Ajuda
se o="#0#59" desvia @EsperaTeclarOpção4
se o="#0#60" desvia @10
se o="#0#61" desvia @opções4
se o="#27" desvia @cancelamissão
escreve "   Opção inválida. F1 ajuda"
desvia @EsperaTeclarOpção4

@11
tela limpa
escreve mudo t
escreve
LêTexto ("@11")
@opções5
escreve
escreve " Se estiver com a pistola e quiser partir para cima com uma rajada de tiros, tecle 1."
escreve " Se quiser esperar o ser surgir e então atirar com a pistola, tecle 2."
escreve " Se possuir o rifle e quiser partir com ele para tentar uma rajada, tecle 3."
escreve " se estiver com o rifle e quiser esperar o ser surgir na curva a  sua frente, tecle 4."
@Esperateclaropção5
lê o &
se o="1" desvia @28
se o="2" desvia @34
se o="3" desvia @42
se o="4" desvia @22
se o="#0#59" chama @Ajuda
se o="#0#59" desvia @EsperaTeclarOpção5
se o="#0#60" desvia @11
se o="#0#61" desvia @opções5
se o="#27" desvia @cancelamissão
escreve "   Opção inválida. F1 ajuda"
desvia @EsperaTeclarOpção5

@12
tela limpa
escreve mudo t
escreve
LêTexto ("@12")
desvia @50

@13
tela limpa
escreve mudo t
escreve
LêTexto ("@13")
@opções6
escreve
escreve " Se desejar ver John McMorus torturar o homem, tecle 1."
escreve " Porém, se acha que esse não é o método ideal para obter as informações, e quiser tentar"
escreve " alguma outra coisa, tecle 2."
@Esperateclaropção6
lê o &
se o="1" desvia @48
se o="2" desvia @23
se o="#0#59" chama @Ajuda
se o="#0#59" desvia @EsperaTeclarOpção6
se o="#0#60" desvia @13
se o="#0#61" desvia @opções6
se o="#27" desvia @cancelamissão
escreve "   Opção inválida. F1 ajuda"
desvia @EsperaTeclarOpção6

@14
tela limpa
escreve mudo t
escreve
LêTexto ("@14")
desvia @25

@15
tela limpa
escreve mudo t
escreve
LêTexto ("@15")
desvia @50

@16
tela limpa
escreve mudo t
escreve
LêTexto ("@16")
desvia @8

@17
tela limpa
escreve mudo t
escreve
LêTexto ("@17")
escreve "     Sua missão acaba por aqui."
Finaliza ()

@18
tela limpa
escreve mudo t
escreve
LêTexto ("@18")
desvia @11

@19
tela limpa
escreve mudo t
escreve
LêTexto ("@19")
escreve "     Sua missão acaba por aqui."
Finaliza ()

@20
tela limpa
escreve mudo t
escreve
LêTexto ("@20")
desvia @18

@21
tela limpa
escreve mudo t
escreve
LêTexto ("@21")
@opções7
escreve
escreve " Se você quiser escolher a pistola, tecle 1."
escreve " Se quiser o rifle, tecle 2."
escreve " Independente de sua escolha, você também recebe uma pequena mas potente lanterna."
@Esperateclaropção7
lê o &
se o="1" desvia @16
se o="2" desvia @9
se o="#0#59" chama @Ajuda
se o="#0#59" desvia @EsperaTeclarOpção7
se o="#0#60" desvia @21
se o="#0#61" desvia @opções7
se o="#27" desvia @cancelamissão
escreve "   Opção inválida. F1 ajuda"
desvia @EsperaTeclarOpção7

@22
tela limpa
escreve mudo t
escreve
LêTexto ("@22")
desvia @10

@23
tela limpa
escreve mudo t
escreve
lêtexto ("@23")
desvia @29

@24
tela limpa
escreve mudo t
escreve
lêtexto ("@24")
desvia @7

@25
tela limpa
escreve mudo t
escreve
lêtexto ("@25")
desvia @3

@26
tela limpa
escreve mudo t
escreve
lêtexto ("@26")
@opções8
escreve
escreve " Se você matou Kenner Wayne na sala das luzes, tecle 1."
escreve " Porém, se não fez isso, tecle 2,  opção que "
escreve " corresponde ao (número da sorte) de Kenner Wayne."
@Esperateclaropção8
lê o &
se o="1" desvia @5
se o="2" desvia @15
se o="#0#59" chama @Ajuda
se o="#0#59" desvia @EsperaTeclarOpção8
se o="#0#60" desvia @26
se o="#0#61" desvia @opções8
se o="#27" desvia @cancelamissão
escreve "   Opção inválida. F1 ajuda"
desvia @EsperaTeclarOpção8

@27
tela limpa
escreve mudo t
escreve
lêtexto ("@27")
desvia @49

@28
tela limpa
escreve mudo t
escreve
lêtexto ("@28")
desvia @10

@29
tela limpa
escreve mudo t
escreve
lêtexto ("@29")
desvia @31

@30
tela limpa
escreve mudo t
escreve
lêtexto ("@30")
desvia @36

@31
tela limpa
escreve mudo t
escreve
lêtexto ("@31")
@opções9
escreve
escreve " Se você quiser sugerir que devem ir pela esquerda, tecle 1."
escreve " Se quiser sugerir que devem pegar a direita, tecle 2."
@EsperaTeclarOpção9
lê o &
se o="1" desvia @7
se o="2" desvia @24
se o="#0#59" chama @Ajuda
se o="#0#59" desvia @EsperaTeclarOpção9
se o="#0#60" desvia @31
se o="#0#61" desvia @opções9
se o="#27" desvia @cancelamissão
escreve "   Opção inválida. F1 ajuda"
desvia @EsperaTeclarOpção9

@32
tela limpa
escreve mudo t
escreve
lêtexto ("@32")
escreve "    Sua missão acaba por aqui. "
finaliza ()

@33
tela limpa
escreve mudo t
escreve
lêtexto ("@33")
desvia @44

@34
tela limpa
escreve mudo t
escreve
lêtexto ("@34")
escreve "    Sua missão acaba por aqui. "
finaliza ()

@35
tela limpa
escreve mudo t
escreve
lêtexto ("@35")
desvia @18

@36
tela limpa
escreve mudo t
escreve
lêtexto ("@36")
@opções10
escreve
escreve " Se você concordar com isso, tecle 1."
escreve " Se achar que existe alguma outra solução, tecle 2."
@EsperaTeclarOpção10
lê o &
se o="1" desvia @45
se o="2" desvia @27
se o="#0#59" chama @Ajuda
se o="#0#59" desvia @EsperaTeclarOpção10
se o="#0#60" desvia @36
se o="#0#61" desvia @opções10
se o="#27" desvia @cancelamissão
escreve "   Opção inválida. F1 ajuda"
desvia @EsperaTeclarOpção10

@37
tela limpa
escreve mudo t
escreve
lêtexto ("@37")
@opções11
escreve
escreve "Se quiser tentar sacar sua arma e atirar, tecle 1."
escreve " Se achar que é melhor esperar e ver o que vai acontecer, tecle 2."
@EsperaTeclarOpção11
lê o &
se o="1" desvia @3945
se o="2" desvia @47
se o="#0#59" chama @Ajuda
se o="#0#59" desvia @EsperaTeclarOpção11
se o="#0#60" desvia @37
se o="#0#61" desvia @opções11
se o="#27" desvia @cancelamissão
escreve "   Opção inválida. F1 ajuda"
desvia @EsperaTeclarOpção11

@38
tela limpa
escreve mudo t
escreve
lêtexto ("@38")
desvia @11

@39
tela limpa
escreve mudo t
escreve
lêtexto ("@39")
desvia @46

@40
tela limpa
escreve mudo t
escreve
lêtexto ("@40")
escreve "   Parabéns, agente X-COM! Você completou sua missão!"
finaliza ()

@41
escreve
escreve mudo t
escreve
lêtexto ("@41")
@opções12
escreve
escreve " Se quiser ir com Thiago Highlin, tecle 1."
escreve " Se quiser ir com John McMorus, tecle 2."
escreve " Se preferir que eles decidam entre si, tecle 3."
@EsperaTeclarOpção12
lê o &
se o="1" desvia @6
se o="2" desvia @20
se o="3" desvia @35
se o="#0#59" desvia @ajuda
se o="#0#59" desvia @esperateclaopção12
se o="#0#60" desvia @41
se o="#0#61" desvia @opções12
se o="#27" desvia @cancelamissão
escreve "   Opção inválida. F1 ajuda"
desvia @EsperaTeclarOpção12

@42
escreve
escreve mudo t
escreve
lêtexto ("@42")
escreve "    Sua missão acaba por aqui."
finaliza ()

@43
escreve
escreve mudo t
escreve
lêtexto ("@43")
@opções13
escreve
escreve " Se você matou Kenner Wayne na sala das luzes, tecle 1."
escreve " Se não, tecle 2."
@EsperaTeclarOpção13
lê o &
se o="1" desvia @40
se o="2" desvia @37
se o="#0#59" desvia @ajuda
se o="#0#59" desvia @esperateclaopção13
se o="#0#60" desvia @43
se o="#0#61" desvia @opções13
se o="#27" desvia @cancelamissão
escreve "   Opção inválida. F1 ajuda"
desvia @EsperaTeclarOpção13

@44
escreve
escreve mudo t
escreve
lêtexto ("@44")
desvia @30

@45
escreve
escreve mudo t
escreve
lêtexto ("@45")
desvia @4

@46
escreve
escreve mudo t
escreve
lêtexto ("@46")
escreve "    Sua missão acaba por aqui."
finaliza ()

@47
escreve
escreve mudo t
escreve
lêtexto ("@47")
desvia @12

@48
escreve
escreve mudo t
escreve
lêtexto ("@48")
desvia @29

@49
escreve
escreve mudo t
escreve
lêtexto ("@49")
desvia @14

@50
escreve
escreve mudo t
escreve
lêtexto ("@50")
escreve "   Parabéns, agente X-COM! Você completou sua missão!"
finaliza ()

*** Fim da aventura ***

*** Opções de repetição ***

@Ajuda
escreve "        As Opções são:"
escreve "      F2 - Repete sua situação"
escreve "      F3 - Repete as alternativas"
escreve "      Esc - cancela sua missão."
retorna

*** Procura e lê um texto do arquivo que acompanha o script ***

função LêTexto (textoProcurado)
abre #1 "C:\winvox\scripts\jogos\x-com.rpg"
lê #1 l
checa c
se c <> 0
fecha #1
escreve "Erro! O arquivo que acompanha o script, está vazio."
escreve "O script não pode prosseguir."
escreve "Fim."
termina mudo
fim se
enquanto l <> TextoProcurado
lê #1 l
checa c
se c <> 0 fecha #1
se c <> 0 escreve "Erro! Rótulo não foi achado no arquivo que acompanha o script."
se c <> 0 escreve "O script não pode prosseguir."
se c <> 0 escreve "Fim."
se c <> 0 termina mudo
fim enquanto
enquanto l <> ""
lê #1 l
escreve l
fim enquanto
fecha #1
fim função

*** Finaliza ou reinicia a aventura ***

função Finaliza()
escreve "   Para jogar novamente, tecle Enter"
escreve "   Para finalisar, tecle Esc"
lê o &
se o="#27" termina mudo
se o="#13" desvia @NovaTentativa
Escreve "Opção inválida."
finaliza ()
fim função

**** Cancela missão ***

@cancelamissão
se o="#27"
escreve "    Ok! missão foi abortada. "
fecha #1
termina mudo
fim se
