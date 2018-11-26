*Aventura X-Com
*Uma aventura solo de RPG.
* O texto do jogo, está em outro arquivo, que é recomendado estar no
* diretório onde encontra-se esse arquivo
* Texto adapitado por: Anderson Alves da Fonseca
* Autor: Anderson Alves da Fonseca
* Inicio: 20/09/2004
*termino: 24/09/2004


tela normal
janela maximiza "SCRIPTVOX"
seja t "              Aventura X-Com"


*** Início ***

tela limpa
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
seja p "@Apresentação"
chama @LêTexto

*** Começo da missão ***

@SuamissãoComeçou
tela limpa
escreve "    Sua missão começou!"
bipa

@NovaTentativa
tela limpa
escreve mudo t
escreve
seja p "@SuamissãoComeçou"
chama @LêTexto
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
seja p "@2"
chama @LêTexto
desvia @43

@3
tela limpa
escreve mudo t
escreve
seja p "@3"
chama @LêTexto
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
seja p "@4"
chama @LêTexto
desvia @25

@5
tela limpa
escreve mudo t
escreve
seja p "@5"
chama @LêTexto
escreve "     Sua missão acaba por aqui."
chama @Fim
termina mudo

@6
tela limpa
escreve mudo t
escreve
seja p "@6"
chama @LêTexto
desvia @38

@7
tela limpa
escreve mudo t
escreve
seja p "@7"
chama @LêTexto
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
seja p "@8"
chama @LêTexto
desvia @13

@9
tela limpa
escreve mudo t
escreve
seja p "@9"
chama @LêTexto
desvia @8

@10
tela limpa
escreve mudo t
escreve
seja p "@10"
chama @LêTexto
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
seja p "@11"
chama @LêTexto
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
seja p "@12"
chama @LêTexto
desvia @50

@13
tela limpa
escreve mudo t
escreve
seja p "@13"
chama @LêTexto
@opções6
escreve
escreve " Se desejar ver John McMorus torturar o homem, tecle 1."
escreve " Porém, se acha que esse não é o método ideal para obter as informações, e quiser tentar"
escreve " alguma outra coisa, tecle 2."
@Esperateclaropção6
lê o &
se o="1" desvia @48
se o="2" desvia @22
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
seja p "@14"
chama @LêTexto
desvia @25

@15
tela limpa
escreve mudo t
escreve
seja p "@15"
chama @LêTexto
desvia @50

@16
tela limpa
escreve mudo t
escreve
seja p "@16"
chama @LêTexto
desvia @8

@17
tela limpa
escreve mudo t
escreve
seja p "@17"
chama @LêTexto
escreve "     Sua missão acaba por aqui."
chama @Fim
termina mudo

@18
tela limpa
escreve mudo t
escreve
seja p "@18"
chama @LêTexto
desvia @11

@19
tela limpa
escreve mudo t
escreve
seja p "@19"
chama @LêTexto
escreve "     Sua missão acaba por aqui."
chama @Fim
termina mudo

@20
tela limpa
escreve mudo t
escreve
seja p "@20"
chama @LêTexto
desvia @18

@21
tela limpa
escreve mudo t
escreve
seja p "@21"
chama @LêTexto
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
seja p "@22"
chama @LêTexto
desvia @10

@23
tela limpa
escreve mudo t
escreve
seja p "@23"
chama @lêtexto
desvia @29

@24
tela limpa
escreve mudo t
escreve
seja p "@24"
chama @lêtexto
desvia @7

@25
tela limpa
escreve mudo t
escreve
seja p "@25"
chama @lêtexto
desvia @3

@26
tela limpa
escreve mudo t
escreve
seja p "@26"
chama @lêtexto
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
seja p "@27"
chama @lêtexto
desvia @49

@28
tela limpa
escreve mudo t
escreve
seja p "@28"
chama @lêtexto
desvia @10

@29
tela limpa
escreve mudo t
escreve
seja p "@29"
chama @lêtexto
desvia @31

@30
tela limpa
escreve mudo t
escreve
seja p "@30"
chama @lêtexto
desvia @36

@31
tela limpa
escreve mudo t
escreve
seja p "@31"
chama @lêtexto
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
seja p "@32"
chama @lêtexto
escreve "    Sua missão acaba por aqui. "
chama @fim
termina mudo

@33
tela limpa
escreve mudo t
escreve
seja p "@33"
chama @lêtexto
desvia @44

@34
tela limpa
escreve mudo t
escreve
seja p "@34"
chama @lêtexto
escreve "    Sua missão acaba por aqui. "
chama @fim
termina mudo

@35
tela limpa
escreve mudo t
escreve
seja p "@35"
chama @lêtexto
desvia @18

@36
tela limpa
escreve mudo t
escreve
seja p "@36"
chama @lêtexto
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
seja p "@37"
chama @lêtexto
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
seja p "@38"
chama @lêtexto
desvia @11

@39
tela limpa
escreve mudo t
escreve
seja p "@39"
chama @lêtexto
desvia @46

@40
tela limpa
escreve mudo t
escreve
seja p "@40"
chama @lêtexto
escreve "   Parabéns, agente X-COM! Você completou sua missão!"
chama @Fim
termina mudo

@41
escreve
escreve mudo t
escreve
seja p "@41"
chama @lêtexto
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
seja p "@42"
chama @lêtexto
escreve "    Sua missão acaba por aqui."
chama @fim
termina mudo

@43
escreve
escreve mudo t
escreve
seja p "@43"
chama @lêtexto
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
seja p "@44"
chama @lêtexto
desvia @30

@45
escreve
escreve mudo t
escreve
seja p "@45"
chama @lêtexto
desvia @4

@46
escreve
escreve mudo t
escreve
seja p "@46"
chama @lêtexto
escreve "    Sua missão acaba por aqui."
chama @fim
termina mudo

@47
escreve
escreve mudo t
escreve
seja p "@47"
chama @lêtexto
desvia @12

@48
escreve
escreve mudo t
escreve
seja p "@48"
chama @lêtexto
desvia @29

@49
escreve
escreve mudo t
escreve
seja p "@49"
chama @lêtexto
desvia @14

@50
escreve
escreve mudo t
escreve
seja p "@50"
chama @lêtexto
escreve "   Parabéns, agente X-COM! Você completou sua missão!"
chama @fim
termina mudo

*** Fim da aventura ***

*** Opções de repetição ***

@Ajuda
escreve "        As Opções são:"
escreve "      F2 - Repete sua situação"
escreve "      F3 - Repete as alternativas"
escreve "      Esc - cancela sua missão."
retorna

*** Procura e lê um texto do arquivo que acompanha o script ***

@LêTexto
abre #1 "C:\winvox\scripts\x-com.rpg"
lê #1 l
checa c
se c <> 0
fecha #1
escreve "Erro! O arquivo que acompanha o script, está vazio."
escreve "O script não pode prosseguir."
escreve "Fim."
termina mudo
fim se
enquanto l <> p
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
retorna

*** Finaliza ou reinicia a aventura ***

@Fim
escreve "   Para jogar novamente, tecle Enter"
escreve "   Para finalisar, tecle Esc"
lê o &
se o="#27" retorna
desvia @NovaTentativa

**** Cancela missão ***

@cancelamissão
se o="#27"
escreve "    Ok! missão foi abortada. "
fecha #1
termina mudo
fim se
