* Númerologia - Números Quentes - Jean Marie Wamser
* Script criado por: Tiago Melo Casal
* Script criado em: 01/10/2002



escreve "            Números Quentes"

*** Pede dados, verifica se estar correto e transforma ***

@Começo
Tela Limpa
Escreve Mudo "            Números Quentes"
escreve

@DigiteNome
escreve "Digite o seu nome completo. Por favor, digite o nome que"
escreve "consta na certidão de nascimento, para que o resultado seja o"
escreve "mais exato possível."
lê s
se s="" chama @Desiste
se s="" desvia @DigiteNome

*** Retira os acentos e o lixo ***

Seja x Maiusc s

Substitui x " " ""
Substitui x "!" ""
Substitui x "#" ""
Substitui x "$" ""
Substitui x "%" ""
Substitui x "&" ""
Substitui x "'" ""
Substitui x "(" ""
Substitui x ")" ""
Substitui x "*" ""
Substitui x "+" ""
Substitui x "," ""
Substitui x "-" ""
Substitui x "." ""
Substitui x "/" ""
Substitui x ":" ""
Substitui x ";" ""
Substitui x "<" ""
Substitui x "=" ""
Substitui x ">" ""
Substitui x "?" ""
Substitui x "@" ""
Substitui x "À" "A"
Substitui x "Ä" "A"
Substitui x "Á" "A"
Substitui x "Ã" "A"
Substitui x "Â" "A"
Substitui x "Ç" "C"
Substitui x "Ê" "E"
Substitui x "È" "E"
Substitui x "É" "E"
Substitui x "Ë" "E"
Substitui x "¡" ""
Substitui x "Í" "I"
Substitui x "Î" "I"
Substitui x "Ï" "I"
Substitui x "Ì" "I"
Substitui x "Ñ" "N"
Substitui x "Ó" "O"
Substitui x "Ô" "O"
Substitui x "Ò" "O"
Substitui x "Ö" "O"
Substitui x "Õ" "O"
Substitui x "Ú" "U"
Substitui x "Ü" "U"
Substitui x "Ù" "U"
Substitui x "Û" "U"
Substitui x "[" ""
Substitui x "]" ""
Substitui x "^" ""
Substitui x "_" ""
Substitui x "`" ""
Substitui x "{" ""
Substitui x "}" ""
Substitui x "~" ""
Substitui x "¿" ""
Substitui x "¨" ""
Substitui x "ª" ""
Substitui x "º" ""
Substitui x "°" ""
Substitui x "§" ""
Substitui x "´" ""

*** Transforma letras em números correspondentes e separa em variáveis *
* vogais, consoantes e todas as letras ***

Seja t x

Substitui t "A" "1"
Substitui t "B" "2"
Substitui t "C" "3"
Substitui t "D" "4"
Substitui t "E" "5"
Substitui t "F" "6"
Substitui t "G" "7"
Substitui t "H" "8"
Substitui t "I" "9"
Substitui t "J" "1"
Substitui t "K" "2"
Substitui t "L" "3"
Substitui t "M" "4"
Substitui t "N" "5"
Substitui t "O" "6"
Substitui t "P" "7"
Substitui t "Q" "8"
Substitui t "R" "9"
Substitui t "S" "1"
Substitui t "T" "2"
Substitui t "U" "3"
Substitui t "V" "4"
Substitui t "W" "5"
Substitui t "X" "6"
Substitui t "Y" "7"
Substitui t "Z" "8"

Seja c Tamanho t
Repete v c
Copia z t v v
Substitui z "1" ""
Substitui z "2" ""
Substitui z "3" ""
Substitui z "4" ""
Substitui z "5" ""
Substitui z "6" ""
Substitui z "7" ""
Substitui z "8" ""
Substitui z "9" ""
Seja s Tamanho z
Se s <> 0 Escreve "Nomes com letras não aceitas. Por favor, não use"
Se s <> 0 Escreve "letras acentuadas nem letras internacionais."
Se s <> 0 Desvia @DigiteNome
Fim Repete

Seja c x
Seja v x

Substitui c "A" ""
Substitui c "B" "2"
Substitui c "C" "3"
Substitui c "D" "4"
Substitui c "E" ""
Substitui c "F" "6"
Substitui c "G" "7"
Substitui c "H" "8"
Substitui c "I" ""
Substitui c "J" "1"
Substitui c "K" "2"
Substitui c "L" "3"
Substitui c "M" "4"
Substitui c "N" "5"
Substitui c "O" ""
Substitui c "P" "7"
Substitui c "Q" "8"
Substitui c "R" "9"
Substitui c "S" "1"
Substitui c "T" "2"
Substitui c "U" ""
Substitui c "V" "4"
Substitui c "W" "5"
Substitui c "X" "6"
Substitui c "Y" "7"
Substitui c "Z" "8"

Substitui v "A" "1"
Substitui v "B" ""
Substitui v "C" ""
Substitui v "D" ""
Substitui v "E" "5"
Substitui v "F" ""
Substitui v "G" ""
Substitui v "H" ""
Substitui v "I" "9"
Substitui v "J" ""
Substitui v "K" ""
Substitui v "L" ""
Substitui v "M" ""
Substitui v "N" ""
Substitui v "O" "6"
Substitui v "P" ""
Substitui v "Q" ""
Substitui v "R" ""
Substitui v "S" ""
Substitui v "T" ""
Substitui v "U" "3"
Substitui v "V" ""
Substitui v "W" ""
Substitui v "X" ""
Substitui v "Y" ""
Substitui v "Z" ""

*** Pede data e data atual ***

@DigiteData
escreve "Digite a sua data de nascimento. Use o formato dd/mm/aaaa"
lê n
se n="" chama @Desiste
se n="" desvia @DigiteData
Seja o Trim n
Seja n Tamanho o
Se n <> "10" Escreve "Data inválida."
Se n <> "10" Desvia @DigiteData
Se o="00/00/0000" Escreve "Data inexistente."
Se o="00/00/0000" Desvia @DigiteData
Copia n o 1 2
Se n="00" Escreve "Data do dia de nascimento inexistente."
Se n="00" Desvia @DigiteData
Copia n o 4 5
Se n="00" Escreve "Mês de nascimento inexistente."
Se n="00" Desvia @DigiteData
Seja n o
Substitui n "/" ""
Seja s Tamanho n
Se s <> 8 Escreve "Data inválida."
Se s <> 8 Desvia @DigiteData
Repete r 8
Copia z n r r
Substitui z "0" ""
Substitui z "1" ""
Substitui z "2" ""
Substitui z "3" ""
Substitui z "4" ""
Substitui z "5" ""
Substitui z "6" ""
Substitui z "7" ""
Substitui z "8" ""
Substitui z "9" ""
Seja s Tamanho z
Se s <> 0 Escreve "Data com caracteres não aceitos."
Se s <> 0 Desvia @DigiteData
Fim Repete
Seja n o

Seja b Data
Escreve "A data atual é: " &
Escreve b
Escreve "A data está correta e no formato dd/mm/aaaa?"
Lê e &
Se e="s" Desvia @Continua
@DigiteDataAtual
Escreve "Digite a data atual no formato DD/MM/AAAA"
Lê b
se b="" chama @Desiste
se b="" desvia @DigiteDataAtual
Seja o Trim b
Seja b Tamanho o
Se b <> "10" Escreve "Data inválida."
Se b <> "10" Desvia @DigiteDataAtual
Se o="00/00/0000" Escreve "Data inexistente."
Se o="00/00/0000" Desvia @DigiteDataAtual
Copia b o 1 2
Se b="00" Escreve "Data do dia atual inexistente."
Se b="00" Desvia @DigiteDataAtual
Copia b o 4 5
Se b="00" Escreve "Mês atual inexistente."
Se b="00" Desvia @DigiteDataAtual
Seja b o
Substitui b "/" ""
Seja s Tamanho b
Se s <> 8 Escreve "Data inválida."
Se s <> 8 Desvia @DigiteData
Repete r 8
Copia z b r r
Substitui z "0" ""
Substitui z "1" ""
Substitui z "2" ""
Substitui z "3" ""
Substitui z "4" ""
Substitui z "5" ""
Substitui z "6" ""
Substitui z "7" ""
Substitui z "8" ""
Substitui z "9" ""
Seja s Tamanho z
Se s <> 0 Escreve "Data com caracteres não aceitos."
Se s <> 0 Desvia @DigiteDataAtual
Fim Repete
Seja b o

@Continua

*** Separa em variáveis o dia, mês e ano ***

Seja h b
Seja i Tamanho h
Chama @SeparaData
Seja d k
Seja h m
Seja i Tamanho h
Chama @SeparaData
Seja e k
Seja f m
Seja h n
Seja i Tamanho h
Chama @SeparaData
Seja g k
Seja h m
Seja i Tamanho h
Chama @SeparaData
Seja h k
Seja i m

*** Calcula o número do nome ***

Espera 1
Seja u t
Chama @SomaEReduz
Escreve "    Nome" &
Escreve q &
Escreve " significa:"
Se q=1
Escreve "  Um(a) líder com espírito de pioneirismo, energia,"
Escreve "  independência e determinação."
Senão
Se q=2
Escreve "  Um(a) diplomata e amante da paz, tão sensível ao sentimento"
Escreve "  dos outros quanto aos próprios."
Senão
Se q=3
Escreve "  Um(a) mestre(a) das palavras, eternamente jovem, que cria"
Escreve "  muitos projetos e se torna mais autoconfiante com a idade."
Senão
Se q=4
Escreve "  Um(a) trabalhador(a) eficiente, com senso prático, paciente"
Escreve "  e minucioso(a)."
Senão
Se q=5
Escreve "  Um(a) viajante, amante da liberdade, bem-sucedido(a) nas"
Escreve "  variações e mudanças, capaz de fazer muitas coisas ao mesmo"
Escreve "  tempo."
Senão
Se q=6
Escreve "  Um(a) harmonizador(a), que sabe valorizar a paz no lar e na"
Escreve "  família, ama as coisas boas e encara suas responsabilidades"
Escreve "  com seriedade."
Senão
Se q=7
Escreve "  Um(a) analista, que sabiamente encontra tempo para ficar só,"
Escreve "  lendo, escrevendo e observando a floresta - apesar da"
Escreve "  presença das árvores."
Senão
Se q=8
Escreve "  Um(a) organizador(a), que alcança o poder e o sucesso quando"
Escreve "  consegue controlar seu próprio destino."
Senão
Se q=9
Escreve "  Um(a) humanitário(a), amante da arte, da música e das"
Escreve "  viagens, que sabe dar com generosidade e aprecia o"
Escreve "  reconhecimento de seus atos."
Fim Se

*** Calcula o número da personalidade ***

Bipa
Seja u c
Chama @SomaEReduz
Escreve "    Personalidade" &
Escreve q &
Escreve " significa (Os outros o(a) acham...):"
Se q=1
Escreve "  Ousado(a), independente, original, com força de vontade e"
Escreve "  espírito competitivo."
Senão
Se q=2
Escreve "  Receptivo(a), sensível, simpático(a), cooperador(a) e"
Escreve "  diplomata."
Senão
Se q=3
Escreve "  Amigo(a), otimista, muito falante, despreocupado(a) e"
Escreve "  divertido(a)."
Senão
Se q=4
Escreve "  Disciplinado(a), prático(a), trabalhador(a), leal e de"
Escreve "  confiança."
Senão
Se q=5
Escreve "  Sempre alerta, ativo(a), com personalidade de muitas"
Escreve "  facetas, atualizado(a) e com espírito de aventura."
Senão
Se q=6
Escreve "  Amoroso(a), adaptável, amável, responsável e franco(a)."
Senão
Se q=7
Escreve "  Reservado(a), equilibrado(a), perspicaz, analítico(a),"
Escreve "  confiável."
Senão
Se q=8
Escreve "  Auto-suficiente, organizado(a), eficiente, poderoso(a) e"
Escreve "  bem-sucedido(a)."
Senão
Se q=9
Escreve "  Cortês, generoso(a), prestativo(a), caridoso(a) e influente."
Fim Se

*** Calcula o número do coração ***

Bipa
Seja u v
Chama @SomaEReduz
Escreve "    Coração" &
Escreve q &
Escreve " significa (Seus sentimentos íntimos e aptidões o(a) levam a...):"
Se q=1
Escreve "  Liderar e dirigir, usando suas próprias idéias."
Senão
Se q=2
Escreve "  Cooperar e agradar os outros, usando a sensibilidade e a"
Escreve "  habilidade diplomática que lhe são inatas."
Senão
Se q=3
Escreve "  Expressar seu otimismo e sua habilidade criativa."
Senão
Se q=4
Escreve "  Fazer sacrifícios para obter resultados tangíveis com planos"
Escreve "  práticos."
Senão
Se q=5
Escreve "  Procurar aventuras e viajar em altas velocidades."
Senão
Se q=6
Escreve "  Criar uma atmosfera pacífica e harmoniosa."
Senão
Se q=7
Escreve "  Procurar ficar a sós para encontrar a verdade e contemplar o"
Escreve "  lado tranqüilo da vida."
Senão
Se q=8
Escreve "  Ter responsabilidade e organizar seus esforços para obter"
Escreve "  dinheiro, poder e sucesso."
Senão
Se q=9
Escreve "  Distribuir seus conhecimentos e sua compaixão em benefício"
Escreve "  do mundo."
Fim Se

*** Cauculando o número da lição ***

Bipa
Seja u n
Substitui u "/" ""
Chama @SomaEReduz
Escreve "    Lição" &
Escreve q &
Escreve " significa:"
Se q=1
Escreve "  Aprenda a manter um bom padrão. Seja forte e independente."
Senão
Se q=2
Escreve "  Aprenda a cooperar. Seja diplomata, trabalhe com os outros e"
Escreve "  não leve as coisas pelo lado pessoal."
Senão
Se q=3
Escreve "  Aprenda a conviver com os outros e empregar bem as palavras."
Escreve "  Seja criativo e desenvolva a autoconfiança."
Senão
Se q=4
Escreve "  Aprenda a trabalhar, atenha-se aos detalhes e seja paciente."
Escreve "  Tenha espírito prático e termine tudo o que começar."
Senão
Se q=5
Escreve "  Aprenda a ser mais flexível e a receber bem as mudanças."
Escreve "  Seja mais espontâneo e aja no entusiasmo do momento."
Senão
Se q=6
Escreve "  Aprenda a ser um conciliador. Se outros discutirem, procure"
Escreve "  acalmar os ânimos. Seja amável e responsável."
Senão
Se q=7
Escreve "  Aprenda a ficar só, sem sentir solidão. Procure analisar e"
Escreve "  conhecer melhor o lado tranqüilo e místico da vida."
Senão
Se q=8
Escreve "  Aprenda a ser organizado, a lidar com dinheiro e a"
Escreve "  equilibrar suas emoções. Cuide da saúde, faça dieta e"
Escreve "  exercícios."
Senão
Se q=9
Escreve "  Aprenda a estender a mão aos outros e se preocupar com seu"
Escreve "  bem-estar. Dê sem esperar nada em troca."
Fim Se

*** Caucula o número do ano pessoal ***

Bipa
Seja x e
Seja y h
Se x > y
Seja j g
Concatena j h
Concatena j f
Desvia @AnoContinua
Fim Se
Se x < y
Seja j g
Concatena j h
Seja k f
Subtrai k 1
Concatena j k
Desvia @AnoContinua
Fim Se
Seja x d
Seja y g
Se x >= y
Seja j g
Concatena j h
Concatena j f
Desvia @AnoContinua
Fim Se
Seja j g
Concatena j h
Seja k f
Subtrai k 1
Concatena j k
@AnoContinua
Seja u j
Chama @SomaEReduz
Escreve "    Ano" &
Escreve q &
Escreve " significa:"
Se q=1
Escreve "  Este é o começo que você esperava. O caminho já foi"
Escreve "  preparado para um início promissor. As sementes que plantar"
Escreve "  agora determinarão sua próxima colheita."
Senão
Se q=2
Escreve "  União e sociedade fazem parte de seus planos. Não seja tão"
Escreve "  sensível, nem leve as coisas para o lado pessoal. Talvez"
Escreve "  este seja um tempo de espera. Procure concentrar-se em algo"
Escreve "  interessante."
Senão
Se q=3
Escreve "  Um ano para ampliar atividades sociais, criar, comunicar,"
Escreve "  colher as sementes que plantou. Existe uma infinidade de"
Escreve "  pequenas tarefas a fazer e você pode ficar confuso. Neste"
Escreve "  período de expansão, é preciso jogo de cintura!"
Senão
Se q=4
Escreve "  Um ano de trabalho duro, no qual poderá sentir-se limitado"
Escreve "  e entediado. Cohtinue trabalhando firme e estabeleça bases"
Escreve "  sólidas para o futuro."
Senão
Se q=5
Escreve "  Mantenha as malas prontas e aguarde o inesperado. Um ano de"
Escreve "  divertimentos, liberdade, sexo, mudanças e viagens. Saia da"
Escreve "  rotina e divirta-se."
Senão
Se q=6
Escreve "  Um ano que exigirá responsabilidades e adaptações e será
Escreve "  influenciado pelo amor, pelo lar e pela família. Você pode"
Escreve "  melhorar a própria aparência e a do ambiente que o rodeia."
Escreve "  Seja um ímã e atraia as pessoas."
Senão
Se q=7
Escreve "  Reserve tempo para você este ano. Aproveite os prazeres da"
Escreve "  leitura ou comunique-se com a natureza. Pense em onde você"
Escreve "  tem estado e para onde está indo. Analise a situação."
Senão
Se q=8
Escreve "  Toda a força no motor! Tempo propício para obter dinheiro,"
Escreve "  poder, sucesso. Cuide da saúde e faça dietas. Organize-se."
Escreve "  Procure atingir o equilíbrio físico e mental."
Senão
Se q=9
Escreve "  Este é um bom ano para organizar seu jardim e dispor daquilo"
Escreve "  que não tem mais utilidade. Compartilhe o que possui e pense"
Escreve "  nos outros. Se uma porta se fechar, procure outra, que"
Escreve "  certamente se abrirá no próximo ano."
Fim Se
Seja m q

*** Caucula o número do mês pessoal ***

Bipa
Seja x d
Seja y g
Se x >= y
Seja r e
Concatena r m
Desvia @MêsContinua
Fim Se
Se e="01"
Seja r "12"
Concatena r m
Desvia @MêsContinua
Fim Se
Seja r e
Subtrai r 1
Concatena r m
@MêsContinua
Seja u r
Chama @SomaEReduz
Escreve "    Mês" &
Escreve q &
Escreve " significa:"
Se q=1
Escreve "  Tempo de ser ativo e independente; planeje algo novo."
Senão
Se q=2
Escreve "  Tempo de união e paciência; faça um resumo dos"
Escreve "  acontecimentos."
Senão
Se q=3
Escreve "  Tempo de usar as palavras, ser criativo e divertir os"
Escreve "  outros."
Senão
Se q=4
Escreve "  Tempo de descansar, ser prático, fazer as coisas que foram"
Escreve "  negligenciadas."
Senão
Se q=5
Escreve "  Tempo de se divertir, manter a mala pronta e aguardar o"
Escreve "  inesperado."
Senão
Se q=6
Escreve "  Tempo de se ajustar, ser amável e responsável."
Senão
Se q=7
Escreve "  Tempo de analisar suas metas e refletir sobre seu progresso."
Senão
Se q=8
Escreve "  Tempo de organizar seus atos e escolher o caminho a seguir."
Senão
Se q=9
Escreve "  Tempo de completar os projetos, procurar outras pessoas e"
Escreve "  viajar."
Fim Se

*** Caucular o número pessoal do dia ***

Bipa
Seja s d
Concatena s e
Concatena s m
Seja u s
Chama @SomaEReduz
Escreve "    Dia" &
Escreve q &
Escreve " significa:"
Se q=1
Escreve "  Corra atrás daquilo que quer!"
Senão
Se q=2
Escreve "  Sente-se e pense no que deseja!"
Senão
Se q=3
Escreve "  Explique bem o que quer!"
Senão
Se q=4
Escreve "  Trabalhe para atingir suas metas!"
Senão
Se q=5
Escreve "  Persiga o que almeja!"
Senão
Se q=6
Escreve "  Ame o que quer!"
Senão
Se q=7
Escreve "  Pense naquilo a que aspira!"
Senão
Se q=8
Escreve "  Organize os fatos!"
Senão
Se q=9
Escreve "  Divida o que conseguir!"
Fim Se

*** Conclusão ***

Espera 1
Escreve "   Deseja realizar outra consulta?"
Lê p &
Se p="s" Desvia @Começo
Desvia @Termina

*** Separa Data ***

@SeparaData
Seja j Pos "/" h
Se j <= "1" Escreve "Data inválida"
Se j <= "1" Retorna
Subtrai j 1
Copia k h 1 j
Seja l j
Soma l 2
Copia m h l i
Retorna

*** Soma e reduz a um algarismo ***

@SomaEReduz
Seja q 0
Seja y 0
Seja z Tamanho u
Repete w z
Copia y u w w
Soma q y
Fim Repete
Seja z Tamanho q
Enquanto z >= "2"
Copia w q 1 1
Copia y q 2 z
Soma w y
Seja q w
Seja z Tamanho q
Fim Enquanto
Retorna

*** Finaliza ou não o script ***

@Desiste
escreve "Quer desistir?"
lê g &
se g="s"
@Termina
escreve "O serviço fácio e rápido dos Números Quentes, estão ao seu" &
escreve " dispor."
escreve "Boa Sorte!"
Bipa
Escreve "   Script escrito por Tiago Melo Casal."
Bipa 1
Escreve "   Dados numerológicos adaptado do livro NÚMEROS QUENTES de ean Sim son"
Bipa 1
Escreve "   Tradução de LIA CAYRES"
Bipa 1
Escreve "   EDITORA BEST SELLER"
termina mudo
fim se
se g="n" retorna
