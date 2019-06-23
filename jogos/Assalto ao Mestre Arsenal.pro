* Jogo - Assalto ao mestre Arsenal
* Revista Dragão Brasil - número 11 ano 1 - Trama Editora Ltda.
* O texto do jogo, está em outro arquivo, que é recomendado estar no
* diretório onde encontra-se esse arquivo
* Texto digitalizado por Luís Antônio Campos
* Autor: Tiago Melo Casal
* Em: 26/05/2002


t := "              ASSALTO AO MESTRE ARSENAL"

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
se o="c" desvia @SuaAventuraComeçou
desvia @OpçãoAouC

*** Apresentação ***

@Apresentação
tela limpa
escreve mudo t
escreve
LêTexto ("@apresentação")

*** Começo da Aventura ***

@SuaAventuraComeçou
tela limpa
escreve "    Sua aventura começou!"
bipa

@novatentativa
tela limpa
escreve mudo t
escreve
LêTexto ("@SuaAventuraComeçou")
@Opções1
escreve
escreve "    Se deseja convidar Parx para participar do roubo, tecle 1"
escreve "    Se não confia no clérigo e prefere agir sozinho, tecle 2"
@EsperaTeclarOpção1
lê o &
se o="1" desvia @24
se o="2" desvia @37
se o="#0#59" chama @Ajuda
se o="#0#59" desvia @EsperaTeclarOpção1
se o="#0#60" desvia @NovaTentativa
se o="#0#61" desvia @Opções1
escreve "   Opção inválida. F1 ajuda"
desvia @EsperaTeclarOpção1

@2
tela limpa
escreve mudo t
escreve
LêTexto ("@2")
@Opções2
escreve
escreve "    Se quiser seguir o conselho de Parx, tecle 1. Prefere usar sua"
escreve "    estratégia costumeira, protegido pela escuridão? Tecle 2"
@EsperaTeclarOpção2
lê o &
se o="1" desvia @32
se o="2" desvia @26
se o="#0#59" chama @Ajuda
se o="#0#59" desvia @EsperaTeclarOpção2
se o="#0#60" desvia @2
se o="#0#61" desvia @Opções2
escreve "   Opção inválida. F1 ajuda"
desvia @EsperaTeclarOpção2

@3
tela limpa
escreve mudo t
escreve
LêTexto ("@3")
@Opções3
escreve
escreve "    Se ainda não investigou o cetro e quer fazê-lo agora, tecle 1"
escreve "    Se prefere abandonar a sala, tecle 2"
@EsperaTeclarOpção3
lê o &
se o="1" desvia @8
se o="2" desvia @20
se o="#0#59" chama @Ajuda
se o="#0#59" desvia @EsperaTeclarOpção3
se o="#0#60" desvia @3
se o="#0#61" desvia @Opções3
escreve "   Opção inválida. F1 ajuda"
desvia @EsperaTeclarOpção3

@4
tela limpa
escreve mudo t
escreve
LêTexto ("@4")
desvia @2

@5
tela limpa
escreve mudo t
escreve
LêTexto ("@5")
@Opções5
escreve
escreve "    Se quer procurar armadilhas, tecle 1"
escreve "    Se quiser ignorar armadilhas e apenas abrir a porta, tecle 2"
@EsperaTeclarOpção5
lê o &
se o="1" desvia @39
se o="2" desvia @30
se o="#0#59" chama @Ajuda
se o="#0#59" desvia @EsperaTeclarOpção5
se o="#0#60" desvia @5
se o="#0#61" desvia @Opções5
escreve "   Opção inválida. F1 ajuda"
desvia @EsperaTeclarOpção5

@6
tela limpa
escreve mudo t
escreve
LêTexto ("@6")
@Opções6
escreve
escreve "    Se quiser dar uma escutadela na porta antes de tentar arrombá-la,"
escreve "    tecle 1. Se quiser voltar e pegar o caminho da esquerda, tecle 2"
escreve "    Se quiser poupar tempo e meter o pé na porta, tecle 3"
@EsperaTeclarOpção6
lê o &
se o="1" desvia @25
se o="2" desvia @34
se o="3" desvia @31
se o="#0#59" chama @Ajuda
se o="#0#59" desvia @EsperaTeclarOpção6
se o="#0#60" desvia @6
se o="#0#61" desvia @Opções6
escreve "   Opção inválida. F1 ajuda"
desvia @EsperaTeclarOpção6

@7
tela limpa
escreve mudo t
escreve
LêTexto ("@7")
desvia @26

@8
tela limpa
escreve mudo t
escreve
LêTexto ("@8")
@Opções8
escreve
escreve "    Se quer correr o risco e tocar o cajado, tecle 1"
escreve "    Ainda não investigou a estatueta e quer fazer agora? Tecle 2"
escreve "    Se quer sair da sala sem tocar em mais nada, tecle 3"
@EsperaTeclarOpção8
lê o &
se o="1" desvia @11
se o="2" desvia @3
se o="3" desvia @20
se o="#0#59" chama @Ajuda
se o="#0#59" desvia @EsperaTeclarOpção8
se o="#0#60" desvia @8
se o="#0#61" desvia @Opções8
escreve "   Opção inválida. F1 ajuda"
desvia @EsperaTeclarOpção8

@9
tela limpa
escreve mudo t
escreve
LêTexto ("@9")
desvia @6

@10
tela limpa
escreve mudo t
escreve
LêTexto ("@10")
@Opções10
escreve
escreve "    Se você aceita o convite de Parx para um assalto, tecle 1"
escreve "    se prefere deixar o homem seguir em paz, tecle 2"
@EsperaTeclarOpção10
lê o &
se o="1" desvia @21
se o="2" desvia @4
se o="#0#59" chama @Ajuda
se o="#0#59" desvia @EsperaTeclarOpção10
se o="#0#60" desvia @10
se o="#0#61" desvia @Opções10
escreve "   Opção inválida. F1 ajuda"
desvia @EsperaTeclarOpção10

@11
tela limpa
escreve mudo t
escreve
////seja p "@11"
LêTexto ("@11")
escreve "     Fim de jogo."
Finaliza ()
escreve "     Se quiser comece novamente, mas faça outro caminho."
termina mudo

@12
tela limpa
escreve mudo t
escreve
////seja p "@12"
LêTexto ("@12")
desvia @26

@13
tela limpa
escreve mudo t
escreve
////seja p "@13"
LêTexto ("@13")
@Opções13
escreve
escreve "    uma espada recurvada dos salteadores do deserto. Se quiser pegá-la,"
escreve "    tecle 1; uma lança prateada, com dragões esculpidos no cabo. Se
escreve "    quiser agarrá-la, tecle 2; um elmo dourado com a forma de uma concha."
escreve "    Se quiser colocá-lo, tecle 3; um colar de contas vermelhas. Para"
escreve "    pegá-lo, tecle 4"
@EsperaTeclarOpção13
lê o &
se o="1" desvia @15
se o="2" desvia @19
se o="3" desvia @27
se o="4" desvia @33
se o="#0#59" chama @Ajuda
se o="#0#59" desvia @EsperaTeclarOpção13
se o="#0#60" desvia @13
se o="#0#61" desvia @Opções13
escreve "   Opção inválida. F1 ajuda"
desvia @EsperaTeclarOpção13

@14
tela limpa
escreve mudo t
escreve
////seja p "@14"
LêTexto ("@14")
@Opções14
escreve
escreve "    Se quiser tentar abri-la, tecle 1"
escreve "    Se quiser tentar o outro corredor, tecle 2"
@EsperaTeclarOpção14
lê o &
se o="1" desvia @28
se o="2" desvia @6
se o="#0#59" chama @Ajuda
se o="#0#59" desvia @EsperaTeclarOpção14
se o="#0#60" desvia @14
se o="#0#61" desvia @Opções14
escreve "   Opção inválida. F1 ajuda"
desvia @EsperaTeclarOpção14

@15
tela limpa
escreve mudo t
escreve
////seja p "@15"
LêTexto ("@15")
escreve "     Fim de jogo para você!"
Finaliza ()
termina "     Se quiser recomece!"

@16
tela limpa
escreve mudo t
escreve
////seja p "@16"
LêTexto ("@16")
@Opções16
escreve
escreve "    Se quiser deixar a tarefa para Parx, tecle 1"
escreve "    Se quiser usar seu próprio poder, tecle 2"
@EsperaTeclarOpção16
lê o &
se o="1" desvia @38
se o="2" desvia @5
se o="#0#59" chama @Ajuda
se o="#0#59" desvia @EsperaTeclarOpção16
se o="#0#60" desvia @16
se o="#0#61" desvia @Opções16
escreve "   Opção inválida. F1 ajuda"
desvia @EsperaTeclarOpção16

@17
tela limpa
escreve mudo t
escreve
////seja p "@17"
LêTexto ("@17")
escreve "     Fim de jogo!"
Finaliza ()
termina "     Não desista.  Reinicie o jogo."

@18
tela limpa
escreve mudo t
escreve
////seja p "@18"
LêTexto ("@18")
desvia @2

@19
tela limpa
escreve mudo t
escreve
//seja p "@19"
LêTexto ("@19")
escreve "     Fim de jogo para você!"
Finaliza ()
termina "     Se quiser volte para recomeçar!"

@20
tela limpa
escreve mudo t
escreve
//seja p "@20"
LêTexto ("@20")
@Opções20
escreve
escreve "    Se você quiser colar o ouvido à porta e escutar, tecle 1"
escreve "    Se acha que pode haver uma armadilha na porta, tecle 2"
@EsperaTeclarOpção20
lê o &
se o="1" desvia @16
se o="2" desvia @29
se o="#0#59" chama @Ajuda
se o="#0#59" desvia @EsperaTeclarOpção20
se o="#0#60" desvia @20
se o="#0#61" desvia @Opções20
escreve "   Opção inválida. F1 ajuda"
desvia @EsperaTeclarOpção20

@21
tela limpa
escreve mudo t
escreve
//seja p "@21"
LêTexto ("@21")
@Opções21
escreve
escreve "    Se quiser roubar a adaga, tecle 1"
escreve "    Se está satisfeito com a bolsa de moedas, tecle 2"
@EsperaTeclarOpção21
lê o &
se o="1" desvia @17
se o="2" desvia @18
se o="#0#59" chama @Ajuda
se o="#0#59" desvia @EsperaTeclarOpção21
se o="#0#60" desvia @21
se o="#0#61" desvia @Opções21
escreve "   Opção inválida. F1 ajuda"
desvia @EsperaTeclarOpção21

@22
tela limpa
escreve mudo t
escreve
escreve "  Convencido de que não há ninguém no aposento, você começa a trabalhar"
escreve "com suas ferramentas. Mas não consegue dedicar-se à fechadura por muito"
escreve "tempo: a porta abre-se de repente pelo lado de dentro ! Infelizmente, seus"
escreve "ouvidos o traíram. Havia alguém no aposento, um zumbi descarnado que"
escreve "aguardava ordens de seu mestre. O silêncio dos mortos-vivos o enganou e"
escreve "você paga com a vida, quando as garras do monstro enterram-se em sua"
escreve "garganta, antes que Parx consiga esconjurá-lo..."
escreve "     Fim de jogo para você!
Finaliza ()
termina "     Volte e faça novas opções!"

@23
tela limpa
escreve mudo t
escreve
escreve "  Abrindo a porta, vocês entram em uma pequena sala vazia, com outra"
escreve "porta na parede oposta, exatamente igual a anterior, mas desta vez"
escreve "destrancada. A nova porta conduz a um corredor que segue em frente até"
escreve "terminar em uma parede, com uma tocha sobre um suporte. Aparentemente não"
escreve "há saída deste pequeno labirinto. Ou há? Tochas costumam servir de"
escreve "alavancas para salas secretas, mas também podem ativar armadilhas para"
escreve "espertinhos que pensarem nisso."
@Opções23
escreve
escreve "    Se quiser mexer na tocha, tecle 1"
escreve "    Se acha melhor procurar armadilhas antes de mexer na tocha, tecle 2"
@EsperaTeclarOpção23
lê o &
se o="1" desvia @13
se o="2" desvia @36
se o="#0#59" chama @Ajuda
se o="#0#59" desvia @EsperaTeclarOpção23
se o="#0#60" desvia @23
se o="#0#61" desvia @Opções23
escreve "   Opção inválida. F1 ajuda"
desvia @EsperaTeclarOpção23

@24
tela limpa
escreve mudo t
escreve
escreve "  Você ruma para o templo escondido onde Parx realiza seus cultos aos"
escreve "Deuses da Trapaça, certo de que vai encontrá-lo tentando convencer seus"
escreve "seguidores a livrarem-se dos (bens materiais), doando-os à igreja."
escreve "Chegando lá, contudo, não encontra ninguém."
escreve "  - Procurando por mim, Andrus?-diz uma voz sobre seu ombro. Você vira-se"
escreve "veloz e descobre o clérigo bem atrás de você. Como o maldito era matreiro!"
escreve "Apenas um ladrão muito experiente podia aproximar-se daquele jeito, pelas"
escreve "costas, de um outro ladrão. Você olha para seu cajado, de aparência"
escreve "inofensiva, mas sabe que é só aparência mesmo: também foi roubado da"
escreve "coleção de Arsenal, e é uma arma mágica poderosa, podendo transformar-se"
escreve "em uma destruidora maça de duas mãos. Você já a viu em ação,"
escreve "transformando crânios de ogres em purê. Você explica seus planos a Parx."
escreve "Ele sorri e afaga o símbolo sagrado, dizendo:"
escreve "  - Certamente os deuses vão nos ajudar nessa empreitada, amigo Andrus."
escreve "Mas tenho plena certeza de que a ajuda seria maior se o futuro chefe da"
escreve "Guilda fizesse certos votos de devoção à causa da Trapaça..."
escreve "  Entendendo o que ele tenta dizer, você garante que o culto de Parx"
escreve "ganhará um novo templo e maiores contribuições da Guilda quando a chefia"
escreve "mudar de mãos. Ele aceita o trato e vocês partem em viagem. Então você"
escreve "percebe que seu mico fugiu. Que diabos! Sob os efeitos da cerveja, o"
escreve "maldito adestrador  escolheu um animal ainda sem treinamento. Você saberá"
escreve "o que fazer com ele quando tornar-se o chefe. Mas, pensando bem, talvez o"
escreve "macaco não tenha fugido. Uma possibilidade atravessa sua mente, mas é tão"
escreve "assustadora que você acha melhor nem pensar nela."
desvia @10

@25
tela limpa
escreve mudo t
escreve
escreve "  No estilo dos padrões, você aproxima o ouvido da porta e concentra-se."
escreve "Não consegue ouvir absolutamente nada. Você não tem dúvidas de que o"
escreve "aposento está vazio."
@Opções25
escreve
escreve "    Se quer forçar a fechadura com suas ferramentas, tecle 1"
escreve "    Se quiser voltar e pegar o caminho da esquerda, tecle 2"
@EsperaTeclarOpção25
lê o &
se o="1" desvia @22
se o="2" desvia @34
se o="#0#59" chama @Ajuda
se o="#0#59" desvia @EsperaTeclarOpção25
se o="#0#60" desvia @25
se o="#0#61" desvia @Opções25
escreve "   Opção inválida. F1 ajuda"
desvia @EsperaTeclarOpção25

@26
tela limpa
escreve mudo t
escreve
escreve "  Ocultos entre as rochas, vocês esperam a chegada da noite."
escreve "  Com a perícia dos ladrões, ocultos pela escuridão, vocês se aproximam"
escreve "da torre Arsenal. Decidem que a melhor maneira de entrar é por uma das"
escreve "janelas do segundo pavimento. Você vai primeiro. A capa mágica"
escreve "permite que suas mãos e pés grudem à pedra, e você escala como se fosse"
escreve "uma aranha. Parx faz uso de seu próprio e incomum método de escalada,"
escreve "transformando-se em macaco e subindo facilmente pela parede. Chegando à"
escreve "janela, vocês desanimam ao descobrir que é protegida por grossas barras"
escreve "de ferro. Seria necessária a força de um poderoso guerreiro para"
escreve "dobrá-las. Ou magia."
escreve "  - E então, Parx? Tem aí algum feitiço que possa ajudar?"
escreve "- Não sou um mago, amigo Andrus - retruca o macaquinho."
escreve "Meus poderes são um presente dos deuses por minha devoção. Mas sim, creio"
escreve "que posso ajudar... É engraçado ver o mico unindo as mãos e rezando, até"
escreve "que o resultado de suas preces comece a surgir: as barras brilham com uma"
escreve "luz fantasmagórica, e você assiste o metal se desmanchar diante de seus"
escreve "olhos!"
escreve "- Como fez isso? - você pergunta."
escreve "- Não fiz nada amigo. Foram os deuses que, a meu pedido, envelheceram as"
escreve "grades mil anos."
escreve "  Contente por ter aquele clérigo do seu lado, você entra no aposento."
escreve "Tira da mochila sua pequena pedra mágica luminosa, que lhe serve de"
escreve "lanterna, e dirige seu facho à volta: parece que parte da coleção de"
escreve "Arsenal está guardada aqui. As paredes estão forradas com lanças,"
escreve "alabardas, tridentes e outras armas de grande porte. Devem ser"
escreve "destruidoras em mãos de um guerreiro, mas não interessam a você ou a Parx."
escreve "  Procurando algo que valha a pena levar, sua atenção se volta para dois"
escreve "objetos :"
@Opções26
escreve
escreve "    Uma estatueta metálica sobre uma mesa, no canto do quarto. Se quiser"
escreve "    pegá-la, tecle 1; Um cetro, suspenso na parede, tendo em sua ponta um"
escreve "    cristal transparente. Se quiser pegá-lo, tecle 2; Se prefere deixar"
escreve "    tudo onde está, tecle 3"
@EsperaTeclarOpção26
lê o &
se o="1" desvia @3
se o="2" desvia @8
se o="3" desvia @20
se o="#0#59" chama @Ajuda
se o="#0#59" desvia @EsperaTeclarOpção26
se o="#0#60" desvia @26
se o="#0#61" desvia @Opções26
escreve "   Opção inválida. F1 ajuda"
desvia @EsperaTeclarOpção26

@27
tela limpa
escreve mudo t
escreve
escreve "  Você coloca o elmo, e nada acontece. Esse elmo seria bem útil debaixo"
escreve "d'água, pois sua magia permite ao usuário respirar como se fosse um peixe,"
escreve "mas de nada adianta agora. Serve apenas para que Arsenal esmague suas"
escreve "pernas com o martelo, esperando poupar o precioso elmo..."
escreve "     Fim de jogo!"
Finaliza ()
termina "     Tente outra vez."

@28
tela limpa
escreve mudo t
escreve
escreve "  A porta está bem trancada."
@Opções28
escreve
escreve "    Se quiser usar suas ferramentas para destrancá-la, vá ao 9."
escreve "    Se quiser tentar o outro corredor, vá ao 6."
@EsperaTeclarOpção28
lê o &
se o="1" desvia @9
se o="2" desvia @6
se o="#0#59" chama @Ajuda
se o="#0#59" desvia @EsperaTeclarOpção28
se o="#0#60" desvia @28
se o="#0#61" desvia @Opções28
escreve "   Opção inválida. F1 ajuda"
desvia @EsperaTeclarOpção28

@29
tela limpa
escreve mudo t
escreve
escreve "  Você examina a fechadura e começa a cutucá-la com seu estojo de"
escreve "ferramentas. Ao seu lado, Parx retoma a forma humana com um desabafo:"
escreve " - Não acredito em meus olhos! Por onde anda sua antiga astúcia, amigo"
escreve "Andrus? Por que está procurando armadilhas no lado de dentro de uma porta?"
escreve "Francamente..."
escreve " Irritado com sua momentânea incompetência para o ramo, Parx avança e mete"
escreve "o pé na porta, escancarando-a, sem se preocupar com o que há no outro"
escreve "lado. E logo se arrepende. A porta leva para um corredor, que a princípio"
escreve "parece vazio."
escreve "Apenas a princípio, porque da escuridão surge um enorme cão, um mastim"
escreve "realmente assustador, com presas demoníacas curvando-se para fora da boca."
escreve "Um cão estranhamente silencioso."
escreve "Você saca o punhal e prepara-se para a luta, mas... seria sua imaginação"
escreve "ou as costelas da criatura estavam expostas?"
escreve "Infelizmente não era imaginação. Aquilo não era um cão de guarda comum,"
escreve "mas sim um cadáver animado, certamente invocado por Arsenal para proteger"
escreve "sua torre nesta noite tão suspeita."
escreve "Despreparados para uma batalha contra um morto-vivo, vocês não conseguem"
escreve "sobreviver ao toque pestilento das garras da fera..."
escreve
escreve "     Fim de jogo para você!"
Finaliza ()
termina "     Quer tentar de novo?"

@30
tela limpa
escreve mudo t
escreve
escreve "  Decidindo que as ferramentas para procurar armadilhas fariam barulho"
escreve "demais, você resolve arriscar."
escreve "Segura a maçaneta, prende a respiração e começa a puxar a porta."
escreve "Um calafrio percorre suas costas quando você vê um arame se esticando da"
escreve "porta ao batente, e ouve um (clique). Você e Parx nem têm tempo de gritar"
escreve "quando dúzias de lanças mergulham do teto, perfurando seus corpos..."
escreve
escreve "     Fim de jogo."
Finaliza ()
termina "     Vai topar jogar de novo?"

@31
tela limpa
escreve mudo t
escreve
escreve "  Cansado de sutilezas, você se arma com a espada que pegou dos guardas e"
escreve "derruba a porta com um chute. A visão do enterior é aterradora: um cadaver"
escreve "ossudo que parece jogado em um canto olha para você e levanta-se, avançando"
escreve "para lutar."
escreve "  Parx segura seu medalhão e prepara-se para esconjurar a criatura, mas"
escreve "você o detém: está farto desses monstros, e quer destroir pelo menos um"
escreve "deles com as próprias mãos. Veloz, em suas mãos, a espada decepa a cabeça"
escreve "do morto-vivo, e depois o braço e o outro... Até que restem apenas pedaços."
escreve "  Você examina a sala em busca de algo importante, e encontra: uma chave"
escreve "pendurada na parede oposta. Com certeza o zumbi estava ali para guardá-la."
escreve "Pegando a chave, você e Parx decidem que não há mais nada a fazer aqui e"
escreve "retomam à bifurcação, pegando o corredor da esquerda."
escreve "  O corredor leva a uma porta trancada. Você experimenta a chave, e ela"
escreve "funciona: aporta se abre."
desvia @23

@32
tela limpa
escreve mudo t
escreve
escreve "  As idéias de Parx são divertidas, e ele é bom com disfarces. Caberá a"
escreve "você inventar uma história convincente antes de bater à porta de Arsenal."
@Opções32
escreve
escreve "    Se quiser apresentar-se como negociante de artefatos mágicos, tecle 1"
escreve "    Se prefere agir sob o disfarce de emissário da Guilda, tecle 2"
@EsperaTeclarOpção32
lê o &
se o="1" desvia @7
se o="2" desvia @12
se o="#0#59" chama @Ajuda
se o="#0#59" desvia @EsperaTeclarOpção32
se o="#0#60" desvia @32
se o="#0#61" desvia @Opções32
escreve "   Opção inválida. F1 ajuda"
desvia @EsperaTeclarOpção32

@33
tela limpa
escreve mudo t
escreve
escreve "  Você agarra o colar de contas, reconhecendo-o como sendo parecido com"
escreve "aquele usado por um ranger amigo seu. As contas do colar são explosivas."
escreve "  Você arranca a maior delas e arremessa contra Arsenal, cobrindo os olhos"
escreve "para proteger-se da explosão."
escreve "  Quando olha novamente, descobre Arsenal ainda de pé, com o peito"
escreve "fumegando."
escreve " - Pobre tolo! - diz ele. É preciso muito mais do que isso para acabar"
escreve "comigo."
escreve " - Será mesmo? - você pergunta, sorrindo, quando uma idéia traiçoeira"
escreve "atravessa sua mente."
escreve "  Você toma outra conta do colar e arremessa... mas não contra Arsenal."
escreve "  Desta vez você faz pontaria no chão, entre seus pés. Como você planejou,"
escreve "o chão não resiste e desaba levando Arsenal consigo."
escreve " - Muito engenhoso, amigo Andrus, diz Parx, aproximando-se da beirada do"
escreve "buraco e olhando lá embaixo. - Isso provavelmente não vai matar Arsenal,"
escreve "mas irá detê-lo até que estejamos longe."
escreve "  É melhor irmos logo, contudo."
escreve "  Ele está certo."
desvia @35

@34
tela limpa
escreve mudo t
escreve
escreve "  O caminho da esquerda conduz vocês por um corredor que, mais adiante,"
escreve "termina em uma pesada porta metálica. Parece grossa demais, e não adiantaria"
escreve "tentar ouvir algo atrás dela."
@Opções34
escreve
escreve "    Se quiser procurar armadilhas na porta, tecle 1"
escreve "    Se quiser tentar abrir a porta, tecle 2"
escreve "    Se quiser tentar outro corredor, tecle 3"
@EsperaTeclarOpção34
lê o &
se o="1" desvia @14
se o="2" desvia @28
se o="3" desvia @6
se o="#0#59" chama @Ajuda
se o="#0#59" desvia @EsperaTeclarOpção34
se o="#0#60" desvia @34
se o="#0#61" desvia @Opções34
escreve "   Opção inválida. F1 ajuda"
desvia @EsperaTeclarOpção34

@35
tela limpa
escreve mudo t
escreve
escreve "  Tendo vencido Arsenal, você Pode examinar sua coleção"
escreve "com mais calma. Dentre uma infinidade de itens, você"
escreve "encontra o que parece ser um chapéu vulgar, mas é exatamente o"
escreve "que procurava."
desvia @40

@36
tela limpa
escreve mudo t
escreve
escreve "  A torre de Arsenal está mesmo deixando você paranóico,"
escreve "mas cuidado nunca é demais neste lugar. Com suas ferramentas,"
escreve "você fuça a base da tocha. Descobre de fato um mecanismo,"
escreve "mas não sabe dizer se vai ativar uma armadilha ou uma porta"
escreve "secreta. Você terá que arriscar."
desvia @13

@37
tela limpa
escreve mudo t
escreve
escreve "  Talvez não seja uma boa idéia confiar em Methralian. Ele"
escreve "tem uma posição de prestígio dentro da Guilda, e uma mudança de"
escreve "diretoria pode não ser de seu agrado. Achando mais prudente agir"
escreve "sem o clérigo, você parte na direção do castelo de Arsenal."
escreve "  Quando você começa sua viagem, uma vozinha soa perto de seu"
escreve "ouvido:"
escreve " - Partindo para uma aventura sem seu colega, Aranha?"
escreve "À menção de seu apelido no submundo, você se vira com a adaga"
escreve "em punho, pronto para atacar quem quer que seja. Mas não"
escreve "encontra ninguém. Olha à volta, confuso, e descobre que está"
escreve "mesmo sozinho. Sozinho, exceto por..."
escreve "  Você olha para o mico em seu ombro. Ele traz um sorriso"
escreve "em seu pequenino rosto."
escreve " - Parx ! - você grita, tentando acertar um tabefe no bicho. Ele"
escreve "se esquiva e pula para o chão, sendo logo envolvido por uma luz"
escreve "mágica e distorcida; aos poucos, a forma de macaco desaparece"
escreve "para dar lugar ao sacerdote Parx Methralian. Agora você se"
escreve "lembra: seus deuses concedem a ele o poder de transformar-se em"
escreve "macaco."
escreve " - Seu trapaceiro dos infernos! Quantas vezes tive você"
escreve "sobre meu ombro?"
escreve " - Muitas, garanto. Um meio bem eficiente de acompanhar suas"
escreve "atividades. Mas não se enfureça tanto, velho amigo. Se eu"
escreve "realmente quisesse atraiçoá-lo, já teria denunciado à diretoria"
escreve "suas atividades. Acalmando-se, você percebe que aquilo deve ser"
escreve "verdade. Parx era assim mesmo: trapaceava por simples devoção"
escreve "aos deuses, sem grandes ambições materiais ou sociais. Se"
escreve "quisesse trair você para conquistar mais prestígio dentro da"
escreve "Guilda, já o teria feito."
escreve "  Você resolve que pode confiar nele, afinal."
escreve "Revela seu plano e assiste-o acariciar o cajado mágico"
escreve "que conseguiu no castelo de Arsenal."
escreve " - Um convite tentador, amigo Andrus. Este sacerdote, confesso,"
escreve "anda um pouco saudoso dos bons tempos de batalha. E será bom"
escreve "ter um velho amigo como chefe da Guilda. Vamos, pois, à procura"
escreve "do bom Mestre Arsenal."
desvia @10

@38
tela limpa
escreve mudo t
escreve
escreve "  Escutando com atenção, você abre a porta no instante em"
escreve "que o cão está trotando no sentido oposto ao de vocês. Ele"
escreve "é imenso e silencioso demais para uma criatura do seu tamanho."
escreve "Parx faz suas preces silenciosas. Você já viu seu feitiço de"
escreve "paralisia em ação: a vítima fica espremida contra o solo, como"
escreve "se prensada por uma mão gigante e invisível, incapaz de"
escreve "mover-se ou falar. Contra aquele mastim, devia ser mais que"
escreve "suficiente."
escreve "  O feitiço, entretanto, não surtiu efeito. Seria sua"
escreve "imaginação, ou as costelas da criatura estavam expostas?"
escreve "  Infelizmente, não era imaginação, Aquilo não era um cão de"
escreve "guarda comum, mas sim um cadáver animado- certamente invocado"
escreve "por Arsenal para proteger sua torre nesta noite tão suspeita."
escreve "  Despreparados para uma batalha contra um morto-vivo, vocês não"
escreve "conseguem sobreviver ao toque pestilento das garras da fera..."
escreve "     Fim de jogo."
Finaliza ()
termina "Vá em busca de outros caminhos."

@39
tela limpa
escreve mudo t
escreve
escreve "  Com o máximo cuidado para não fazer ruído, você usa suas"
escreve "costumeiras agulhas envenenadas que costumam saltar das"
escreve "maçanetas, mas não encontra nenhuma. Depois de longos minutos,"
escreve "quando você está quase acreditando que a porta é inofensiva,"
escreve "percebe a existência de um mecanismo que seria ativado pelo"
escreve "abrir da porta. Não há como saber exatamente o que ele faria,"
escreve "mas é claramente uma armadilha. Com uma tesoura apropriada, vc"
escreve "corta o arame que serviria de gatilho e agora a porta é segura."
escreve "  A porta leva a um grande aposento, que você e Parx reconhecem"
escreve "de imediato: é a sala onde Arsenal guarda as peças principais"
escreve "de sua coleçao e ela cresceu desde quando estiveram aqui."
escreve "  Espadas magníficas adornam as paredes, armaduras reluzentes"
escreve "descansam em seus pedestais, escudos, orgulhosos, exibem seus"
escreve "brasões. Mas nada disso interessa a você. Precisa de alguma"
escreve "coisa especial, alguma coisa diferente..."
escreve " - Tudo nessa sala é mágico - comenta Parx, maravilhado. Até"
escreve "mesmo aquele tapete. Vocês voltam a atenção para um grande"
escreve "tapete, finamente trabalhado, bem no centro da sala. Seria um"
escreve "dos tais tapetes voadores? Vale a pena investigar. Você e Parx"
escreve "se aproximam para sentar no tapete... e caem.
escreve "  A consciência retorna dolorosa. Você acorda em uma cela no"
escreve "calabouço da torre de Arsenal. Parx está ajoelhado ao seu lado,"
escreve "entoando cânticos para curar os ferimentos causados pela queda."
escreve " - O que foi desta vez? - você pergunta."
escreve " - Uma armadilha. O tapete nunca existiu. Era uma ilusão que"
escreve "escondia um alçapão."
escreve "Você olha para o teto e vê o alçapão por onde devem ter caído,"
escreve "agora fechado. Malditas armadilhas mágicas!"
escreve "  Passos denunciam a aproximação de alguém. A porta da cela se"
escreve "abre, e por ela entram o que parecem ser dois guardas com"
escreve "armaduras completas."
escreve "  Mas basta um olhar mais cuidadoso para notar que não há"
escreve "seres humanos ali: são armaduras mágicas. Elas se posicionam"
escreve "nos lados da porta, de espadas em punho e abrem passagem para..."
escreve "Arsenal. Sim, Mestre Arsenal em pessoa. O habilidoso guerreiro,"
escreve "cujo nome verdadeiro foi esquecido há muito tempo e que passou"
escreve "grande parte da sua vida percorrendo o mundo em busca de armas"
escreve "e armaduras encantadas. O dono da torre invadida por você e"
escreve "seus companheiros, para recuperar um artefato roubado,"
escreve "aproveitando para levar consigo muitas peças de sua coleção."
escreve "  Será que ele ainda estava zangado?"
escreve "  Arsenal usava suas peças favoritas: a couraça completa, a"
escreve "capa orgulhosa e o rosto oculto pelo elmo de aspecto ameaçador."
escreve "Desta vez não trazia consigo o escudo imenso, grande como uma"
escreve "porta e o descumunal martelo de guerra, capaz de derrubar"
escreve "paredes, pelo que você se lembra. Trazia nas mãos sua capa"
escreve "mágica e o cajado de Parx."
escreve " - Surpreendem-me com sua audácia, seus ratos ladrões, diz a voz"
escreve "abafada pelo elmo. - Invadir minha torre no passado foi, por si"
escreve "só, um atrevimento desmedido. Retornar aqui, então, é algo que"
escreve "só posso classificar como pura loucura."
escreve "  Ele agita a capa e o cajado diante de vocês, talvez"
escreve "esperando que tentem recuperá-los. Nem você e nem Parx são tolos"
escreve "o bastante para tentar: Arsenal usa objetos mágicos que ampliam"
escreve "sua força e mesmo sem armas poderia matá-los sem esforço."
escreve " - A recompensa por sua tolice será a morte - anuncia ele. - Mas"
escreve "não agora. Vocês interromperam meu sono e desejo estar"
escreve "descansado para saborear seu sofrimento. Aproveitem seu último"
escreve "alvorecer. Arsenal deixa a cela, instruindo as armaduras para"
escreve "montar guarda do lado de fora. Você e Parx entreolham-se:"
escreve "- Reparou como os vilões sempre dão uma chance para a gente"
escreve "escapar?"
escreve " - Não alimente falsas esperanças, Andrus. Como a maioria"
escreve "dos usuários de feitiços, Arsenal precisa estar plenamente"
escreve "descansado para renovar seus poderes pela manhã. Por certo ele"
escreve "planeja matar-nos com magia, de maneiras tão horríveis que eu"
escreve "mal poderia descrever."
escreve "Diante dessa perspectiva nada agradável, você saca o estojo de"
escreve "ferramentas que, felizmente, escapou à revista de Arsenal."
escreve " - Como vamos sair daqui? Posso cuidar da fechadura, mas e os"
escreve "guardas?"
escreve " - Apenas abra a porta, e deixe o resto comigo."
escreve "  Você lida com a fechadura da cela, ofendido com sua simplicidade."
escreve "Destranca-a em poucos segundos. Então, de posse de seu símbolo"
escreve "sagrado, Parx salta para o corredor e enfrenta os guardas."
escreve " - Voltem para o reino dos mortos, criaturas das trevas! Parece"
escreve "que Parx perdeu o juízo. Ele pode esconjurar mortos-vivos, mas"
escreve "como espera fazer o mesmo com armaduras mágicas? Para sua"
escreve "surpresa, entretanto, você assiste a uma cena impossível: as"
escreve "armaduras estremecem e caem em pedaços."
escreve " - Não eram armaduras encantadas, explica Parx . -Eram fantasmas"
escreve "invisíveis, invocados por Arsenal."
escreve " - É bom ver você mostrar um pouco de esperteza, para variar!"
escreve "  Rindo baixo, você agarra uma das espadas caídas no chão e"
escreve "oferece outra a Parx. Ele recusa, afirmando que seus deuses não"
escreve "aprovam o uso de armas daquele tipo. Vocês seguem por um"
escreve "corredor mal iluminado e chegam a uma bifurcação."
@Opções39
escreve
escreve "    Se quiser pegar o caminho da direita, tecle 1"
escreve "    Se prefere o da esquerda, tecle 2"
@EsperaTeclarOpção39
lê o &
se o="1" desvia @6
se o="2" desvia @34
se o="#0#59" chama @Ajuda
se o="#0#59" desvia @EsperaTeclarOpção39
se o="#0#60" desvia @39
se o="#0#61" desvia @Opções39
escreve "   Opção inválida. F1 ajuda"
desvia @EsperaTeclarOpção39

@40
tela limpa
escreve mudo t
escreve
escreve "  Dias depois, os grandes chefes de quadrilha de Kristophania"
escreve "foram convocados para uma reunião extraordinária pelo chefão da"
escreve "Guilda. Na cabeceira da mesa, tendo seus guardas assassinos a"
escreve "seu lado, ele tem um anúncio surpreendente a fazer:"
escreve " - Estou cansado da diretoria, declara ele. - Convoquei esta"
escreve "reunião para declarar quem será o novo chefe geral da Guilda de"
escreve "Kristophania. Andrus, o Aranha, será o novo diretor."
escreve "  Os chefes se agitam, indignados, com a entrada de Andrus no"
escreve "recinto. Cada um esperava ser indicado para o cargo supremo..."
escreve "mas não estavam preparados para aquilo! Andrus?"
escreve " - Muito obrigado, chefe - você diz. - Vou cuidar bem das"
escreve "coisas por aqui."
escreve " - Conto com você, Andrus. Estarei me retirando para meu"
escreve "esconderijo, onde vou gozar de uma aposentadoria merecida,"
escreve "longe das autoridades. Adeus."
escreve "  E a reunião termina com a saída dos chefes, furiosos. Você terá"
escreve "alguns problemas para impor sua autoridade a eles, mas nada"
escreve "difícil demais. Com a autorização pessoal do chefão, e os"
escreve "assassinos da Guilda ao seu lado, ninguém irá se opor à sua"
escreve "liderança."
escreve "  Você dispensa os guardas, satisfeito em ver que eles"
escreve "cumprem suas ordens. Estão sozinhos agora, você e o ex chefe."
escreve "Ou não?"
escreve " - Muito bom este chapéu de disfarce , revela Parx, disfarçado"
escreve "por seu poder mágico, em chefe da Guilda."
escreve " - Suas ilusões poderiam enganar qualquer um."
escreve " - Não precisam enganar mais ninguém. Você explica:"
escreve " - Se o corpo do chefe for encontrado, não fará mais diferença."
escreve "Agora (ele) já passou o cargo para mim, certo?"
escreve "Sim, foi um bom plano: matar o chefe, e usar o chapéu mágico"
escreve "de Arsenal para criar a ilusão de que Parx era ele, transferindo"
escreve "toda a autoridade para você. Parabéns, você conseguiu."
escreve "É o novo chefão da Guilda dos Ladrões... Pelo menos até que"
escreve "alguém apareça com um plano mais matreiro que o seu!"
termina "      Parabéns, você venceu... Fim de jogo! Volte sempre!"

*** Fim da aventura ***

*** Opções de repetição ***

@Ajuda
escreve "        As Opções são:"
escreve "      F2 - Repete sua situação"
escreve "      F3 - Repete as alternativas"
retorna

*** Procura e lê um texto do arquivo que acompanha o script ***

função LêTexto (texto)
abre #1 "C:\Winvox\Scripts\Jogos\Assalto.ct0"
lê #1 l
checa c
se c <> 0
fecha #1
escreve "Erro! O arquivo que acompanha o script, está vazio."
escreve "O script não pode prosseguir."
termina "Fim."
fim se
enquanto l <> texto
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

função Finaliza ()
escreve "   Para jogar novamente, tecle Enter"
escreve "   Para finalisar, tecle Escape"
lê o &
se o="#27" termina mudo
se o="#13" desvia @novatentativa
Escreve "Opção inválida."
finaliza ()
fim função
