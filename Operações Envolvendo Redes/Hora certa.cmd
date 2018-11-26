* Script para acertar a hora do computador via Internet e informar a
*hora certa em diversas cidades do mundo
*Autores: Antonio Borges, Glauco Férius, Fabiano Ferreira e Edson Junior
*Em 12 de julho de 2003
*atualizado em maio de 2014

escreve "Bem vindo ao Programa da Hora Certa!"

@inicio
seja $hora ""
seja $data ""

escreve "Tecle A, para acertar o relógio do seu computador pela hora oficial brasileira,"
escreve "ou h, para saber a hora certa em outras cidades do mundo:"
le e &
se e = "a" chama @acertahora
se e = "h" chama @horasdomundo
se e = "#27" chama @fim
desvia @inicio

*acerta o relógio do computador
@acertahora
chama @pegahora
chama @tratahora
seja $horaatual hora
seja $dataatual data

Escreve "Hora do seu computador: "$horaatual
Escreve "Hora on line: "$hora
Escreve "data do seu computador: "$dataatual
Escreve "data on line: "$data
Escreve "Modificando hora e data, aguarde."

seja $comando "cmd /c time "
concatena $comando $hora
executa $comando &
espera 3
seja $comando "cmd /c date "
concatena $comando $data
executa $comando
seja $hora hora
seja $data data
Escreve "A hora do seu computador agora é: "$hora
Escreve ""
Escreve "A data do seu computador agora é: "$data
retorna

*mostra a hora certa em diversas cidades do mundo
@horasdomundo
Escreve "Saiba aqui a hora certa em diversas cidades do mundo."
Escreve ""
Escreve "Selecione a cidade e pressione enter para saber a hora."
escreve "Aperte escape para sair do menu"


menu cria 1 1 174 40
menu adiciona "África do Sul Joanesburgo"
menu adiciona "Áustria Viena"
menu adiciona "Índia Calcutá"
menu adiciona "Albânia Tirana"
menu adiciona "Alemanha Berlim"
menu adiciona "Andorra Andorra-a-Velha"
menu adiciona "Angola Luanda"
menu adiciona "Antígua e Barbuda Saint John's"
menu adiciona "Arábia Saudita Riad"
menu adiciona "Argentina Buenos Áires"
menu adiciona "Argélia Argel"
menu adiciona "Austrália Sidney"
menu adiciona "Bósnia e Herzegovina Sarajevo"
menu adiciona "Bahamas Nassau"
menu adiciona "Bahrein Manama"
menu adiciona "Barbados Bridgetown"
menu adiciona "Belize Belmopan"
menu adiciona "Benim Porto-Novo"
menu adiciona "Bielorrússia Minsk"
menu adiciona "Bolívia La Paz"
menu adiciona "Botswana Gaborone"
menu adiciona "Brasil Manaus"
menu adiciona "Brasil Recife"
menu adiciona "Brasil São Paulo"
menu adiciona "Brunei Bandar Seri Begawan"
menu adiciona "Bulgária Sófia"
menu adiciona "Burkina Faso Uagadugu"
menu adiciona "Burundi Bujumbura"
menu adiciona "Bélgica Bruxelas"
menu adiciona "Camarões Iaundê"
menu adiciona "Camboja Phnom Penh"
menu adiciona "Canadá Horário Atlântico Halifax"
menu adiciona "Canadá Horário Central Winnipeg"
menu adiciona "Canadá Horário Oriental Ottawa, Montreal"
menu adiciona "Canadá Horário Pacífico Vancouver"
menu adiciona "Chade Ndjamena"
menu adiciona "Chile Ilha de Páscoa"
menu adiciona "Chile Santiago"
menu adiciona "China Hong Kong"
menu adiciona "China Pequim"
menu adiciona "Chipre Nicósia"
menu adiciona "Colômbia Bogotá"
menu adiciona "Coreia do Norte Pyongyang"
menu adiciona "Coreia do Sul Seúl"
menu adiciona "Costa do Marfim Abidjan"
menu adiciona "Costa Rica San José"
menu adiciona "Croácia Zagreb"
menu adiciona "Cuba Havana"
menu adiciona "Dinamarca Copenhague"
menu adiciona "Egito Cairo"
menu adiciona "El Salvador São Salvador"
menu adiciona "Equador Quito"
menu adiciona "Eritreia Asmará"
menu adiciona "Eslováquia Bratislava"
menu adiciona "Eslovênia Liubliana"
menu adiciona "Espanha Barcelona"
menu adiciona "Espanha Ilhas Canárias"
menu adiciona "Espanha Madri"
menu adiciona "Estônia Tallinn"
menu adiciona "Estados Unidos Chicago"
menu adiciona "Estados Unidos Flórida"
menu adiciona "Estados Unidos Los Angeles"
menu adiciona "Estados Unidos Nova Iorque"
menu adiciona "Etiópia Addis Abeba"
menu adiciona "Filipinas Manila"
menu adiciona "Finlândia Helsinki"
menu adiciona "França Paris"
menu adiciona "Gabão Libreville"
menu adiciona "Gana Acra"
menu adiciona "Gâmbia Banjul"
menu adiciona "Granada Saint George's"
menu adiciona "Groelândia Nuuk"
menu adiciona "Groelândia Qaanaaq"
menu adiciona "Grécia Atenas"
menu adiciona "Guatemala Guatemala"
menu adiciona "Guiana Georgetown"
menu adiciona "Guiné Equatorial Malabo"
menu adiciona "Guiné-Bissau Bissau"
menu adiciona "Haiti Porto Príncipe"
menu adiciona "Holanda Amsterdão"
menu adiciona "Honduras Tegucigalpa"
menu adiciona "Hungria Budapeste"
menu adiciona "Indonésia Horário Ocidental Jacarta"
menu adiciona "Indonésia Horário Oriental Manokwari"
menu adiciona "Inglaterra Londres"
menu adiciona "Iraque Bagdá"
menu adiciona "Irlanda Dublim"
menu adiciona "Islândia Reiquiavique"
menu adiciona "Israel Jerusalém"
menu adiciona "Itália Roma"
menu adiciona "Iêmen Sana"
menu adiciona "Jamaica Kingston"
menu adiciona "Japão Tóquio"
menu adiciona "Jordânia Amã"
menu adiciona "Kinshasa"
menu adiciona "Kuwait Al Kuwait"
menu adiciona "Laos Vietiname"
menu adiciona "Lesoto Maseru"
menu adiciona "Letônia Riga"
menu adiciona "Libéria Monróvia"
menu adiciona "Liechtenstein Vaduz"
menu adiciona "Lituânia Vilnius"
menu adiciona "Luxemburgo Luxemburgo"
menu adiciona "Líbano Beirute"
menu adiciona "Líbia Trípoli"
menu adiciona "Mônaco Mônaco"
menu adiciona "Macedônia Skopje"
menu adiciona "Madagáscar Antananarivo"
menu adiciona "Malásia Kuala Lumpur"
menu adiciona "Malawi Lilongwe"
menu adiciona "Malta La Valeta"
menu adiciona "Marrocos Rabat"
menu adiciona "Mauritânia Nuakchott"
menu adiciona "Moldávia Chisinau"
menu adiciona "Mongólia Ulaanbaatar"
menu adiciona "Montenegro Podgorica"
menu adiciona "Moçambique Maputo"
menu adiciona "México Horário Central"
menu adiciona "México Horário Noroeste Mexicali, Tijuana"
menu adiciona "Namíbia Windhoek"
menu adiciona "Nicarágua Manágua"
menu adiciona "Nigéria Abuja"
menu adiciona "Noruega Oslo"
menu adiciona "Níger Niamei"
menu adiciona "Palau Melekeok"
menu adiciona "Panamá Panamá"
menu adiciona "Paraguai Assunção"
menu adiciona "Peru Lima"
menu adiciona "Polônia Varsóvia"
menu adiciona "Portugal Continental e Lisboa, Funchal"
menu adiciona "Qatar Doha"
menu adiciona "Quênia Nairóbi"
menu adiciona "Rússia Irkutsk"
menu adiciona "Rússia Kalingrado"
menu adiciona "Rússia Krasnoyarsk"
menu adiciona "Rússia Moscou"
menu adiciona "Rússia Omsk"
menu adiciona "Reino Unido Londres"
menu adiciona "República Centro-Africana Bangui"
menu adiciona "República Checa Praga"
menu adiciona "República do Congo Brazzaville"
menu adiciona "Romênia Bucareste"
menu adiciona "Ruanda Kigali"
menu adiciona "Saara Ocidental El Aaiún"
menu adiciona "Senegal Dacar"
menu adiciona "Senegal Dakar"
menu adiciona "Serra Leoa Freetown"
menu adiciona "Singapura Singapura"
menu adiciona "Somália Mogadíscio"
menu adiciona "São Tomé e Príncipe"
menu adiciona "São Vicente e Granadinas Kingstown"
menu adiciona "Suazilândia Lobamba"
menu adiciona "Sudão Cartum"
menu adiciona "Sudão do Sul Juba"
menu adiciona "Suriname Paramaribo"
menu adiciona "Suécia Estocolmo"
menu adiciona "Suíça Berna"
menu adiciona "Sérvia Belgrado"
menu adiciona "Síria Damasco"
menu adiciona "Tailândia Bancoque"
menu adiciona "Tanzânia Dodoma, Zanzibar"
menu adiciona "Timor Leste Díli"
menu adiciona "Togo Lomé"
menu adiciona "Trindade e Tobago Port of Spain"
menu adiciona "Tunísia Túnis"
menu adiciona "Turquia Ankara, Istambul"
menu adiciona "Ucrânia Kiev"
menu adiciona "Uganda Kampala"
menu adiciona "Uruguai Montevidéu"
menu adiciona "Vaticano"
menu adiciona "Vietname Hanói"
menu adiciona "Washington Horário Oriental"
menu adiciona "Zimbabwe Harare"
menu adiciona "Zâmbia Lusaka"

@naofaznada
menu executa $numero $letra $texto
se $letra = "#13" chama @mostrahora
se $letra = "#0#66" chama @mostrahora
se $letra = "#0#65" chama @mostrahora
se $letra = "#27" retorna
desvia @naofaznada

*mostra a hora da cidade escolhida
@mostrahora
se $numero = 1 seja c "joanesburgo"
se $numero = 2 seja c "viena"
se $numero = 3 seja c "calcuta"
se $numero = 4 seja c "viena"
se $numero = 5 seja c "viena"
se $numero = 6 seja c "viena"
se $numero = 7 seja c "luanda"
se $numero = 8 seja c "buenos_aires"
se $numero = 9 seja c "dubai"
se $numero = 10 seja c "buenos_aires"
se $numero = 11 seja c "viena"
se $numero = 12 seja c "sidney"
se $numero = 13 seja c "viena"
se $numero = 14 seja c "manaus"
se $numero = 15 seja c "dubai"
se $numero = 16 seja c "buenos_aires"
se $numero = 17 seja c "chicago"
se $numero = 18 seja c "viena"
se $numero = 19 seja c "dubai"
se $numero = 20 seja c "manaus"
se $numero = 21 seja c "bagda"
se $numero = 22 seja c "manaus"
se $numero = 23 seja c "recife"
se $numero = 24 seja c "sao_paulo"
se $numero = 25 seja c "toquio"
se $numero = 26 seja c "bagda"
se $numero = 27 seja c "londres"
se $numero = 28 seja c "bagda"
se $numero = 29 seja c "viena"
se $numero = 30 seja c "viena"
se $numero = 31 seja c "hong-kong"
se $numero = 32 seja c "buenos_aires"
se $numero = 33 seja c "chicago"
se $numero = 34 seja c "manaus"
se $numero = 35 seja c "los_angeles"
se $numero = 36 seja c "viena"
se $numero = 37 seja c "chicago"
se $numero = 38 seja c "buenos_aires"
se $numero = 39 seja c "hong_kong"
se $numero = 40 seja c "toquio"
se $numero = 41 seja c "bagda"
se $numero = 42 seja c "manaus"
se $numero = 43 seja c "sidney"
se $numero = 44 seja c "sidney"
se $numero = 45 seja c "londres"
se $numero = 46 seja c "chicago"
se $numero = 47 seja c "viena"
se $numero = 48 seja c "manaus"
se $numero = 49 seja c "viena"
se $numero = 50 seja c "cairo"
se $numero = 51 seja c "chicago"
se $numero = 52 seja c "manaus"
se $numero = 53 seja c "dubai"
se $numero = 54 seja c "viena"
se $numero = 55 seja c "viena"
se $numero = 56 seja c "viena"
se $numero = 57 seja c "londres"
se $numero = 58 seja c "viena"
se $numero = 59 seja c "bagda"
se $numero = 60 seja c "chicago"
se $numero = 61 seja c "chicago"
se $numero = 62 seja c "los_angeles"
se $numero = 63 seja c "nova_iorque"
se $numero = 64 seja c "dubai"
se $numero = 65 seja c "toquio"
se $numero = 66 seja c "bagda"
se $numero = 67 seja c "paris"
se $numero = 68 seja c "viena"
se $numero = 69 seja c "londres"
se $numero = 70 seja c "londres"
se $numero = 71 seja c "buenos_aires"
se $numero = 72 seja c "sao_paulo"
se $numero = 73 seja c "buenos_aires"
se $numero = 74 seja c "atenas"
se $numero = 75 seja c "chicago"
se $numero = 76 seja c "buenos_aires"
se $numero = 77 seja c "viena"
se $numero = 78 seja c "londres"
se $numero = 79 seja c "manaus"
se $numero = 80 seja c "viena"
se $numero = 81 seja c "chicago"
se $numero = 82 seja c "viena"
se $numero = 83 seja c "hong-kong"
se $numero = 84 seja c "sidney"
se $numero = 85 seja c "londres"
se $numero = 86 seja c "bagda"
se $numero = 87 seja c "londres"
se $numero = 88 seja c "londres"
se $numero = 89 seja c "jerusalem"
se $numero = 90 seja c "viena"
se $numero = 91 seja c "dubai"
se $numero = 92 seja c "manaus"
se $numero = 93 seja c "toquio"
se $numero = 94 seja c "bagda"
se $numero = 95 seja c "viena"
se $numero = 96 seja c "dubai"
se $numero = 97 seja c "hong-kong"
se $numero = 98 seja c "bagda"
se $numero = 99 seja c "bagda"
se $numero = 100 seja c "londres"
se $numero = 101 seja c "viena"
se $numero = 102 seja c "bagda"
se $numero = 103 seja c "viena"
se $numero = 104 seja c "bagda"
se $numero = 105 seja c "viena"
se $numero = 106 seja c "viena"
se $numero = 107 seja c "viena"
se $numero = 108 seja c "dubai"
se $numero = 109 seja c "toquio"
se $numero = 110 seja c "bagda"
se $numero = 111 seja c "viena"
se $numero = 112 seja c "londres"
se $numero = 113 seja c "londres"
se $numero = 114 seja c "bagda"
se $numero = 115 seja c "toquio"
se $numero = 116 seja c "viena"
se $numero = 117 seja c "bagda"
se $numero = 118 seja c "chicago"
se $numero = 119 seja c "los_angeles"
se $numero = 120 seja c "viena"
se $numero = 121 seja c "chicago"
se $numero = 122 seja c "viena"
se $numero = 123 seja c "viena"
se $numero = 124 seja c "viena"
se $numero = 125 seja c "sidney"
se $numero = 126 seja c "manaus"
se $numero = 127 seja c "buenos_aires"
se $numero = 128 seja c "manaus"
se $numero = 129 seja c "viena"
se $numero = 130 seja c "lisboa"
se $numero = 131 seja c "dubai"
se $numero = 132 seja c "dubai"
se $numero = 133 seja c "sidney"
se $numero = 134 seja c "dubai"
se $numero = 135 seja c "toquio"
se $numero = 136 seja c "moscou"
se $numero = 137 seja c "hong-kong"
se $numero = 138 seja c "londres"
se $numero = 139 seja c "viena"
se $numero = 140 seja c "viena"
se $numero = 141 seja c "viena"
se $numero = 142 seja c "bagda"
se $numero = 143 seja c "bagda"
se $numero = 144 seja c "londres"
se $numero = 145 seja c "londres"
se $numero = 146 seja c "dakar"
se $numero = 147 seja c "londres"
se $numero = 148 seja c "toquio"
se $numero = 149 seja c "dubai"
se $numero = 150 seja c "londres"
se $numero = 151 seja c "buenos_aires"
se $numero = 152 seja c "bagda"
se $numero = 153 seja c "dubai"
se $numero = 154 seja c "dubai"
se $numero = 155 seja c "sao_paulo"
se $numero = 156 seja c "viena"
se $numero = 157 seja c "viena"
se $numero = 158 seja c "viena"
se $numero = 159 seja c "bagda"
se $numero = 160 seja c "hong-kong"
se $numero = 161 seja c "dubai"
se $numero = 162 seja c "sidney"
se $numero = 163 seja c "londres"
se $numero = 164 seja c "buenos_aires"
se $numero = 165 seja c "viena"
se $numero = 166 seja c "bagda"
se $numero = 167 seja c "bagda"
se $numero = 168 seja c "dubai"
se $numero = 169 seja c "sao_paulo"
se $numero = 170 seja c "viena"
se $numero = 171 seja c "hong-kong"
se $numero = 172 seja c "manaus"
se $numero = 173 seja c "bagda"
se $numero = 174 seja c "bagda"
chama @pegahora
chama @tratahora
se $letra = "#0#66"
Escreve $hora
senão
se $letra = "#0#65"
escreve $data
senão
escreve $hora
escreve $data
fim se
retorna

*obtem a hora on line
@pegahora
internet inicia
conecta #1 "www.horacerta.com.br" 80
se e = "a"
escreve #1 "GET / HTTP /1.1"
senão
seja $pagina "/index.php?city="
concatena $pagina c
escreve #1 "GET "$pagina" HTTP /1.1"
fim se
escreve #1 "User-agent: scripvox"
escreve #1 "Accept: */*"
escreve #1 "Host: www.horacerta.com.br"
escreve #1 "connection: Keep-Alive"
escreve #1 ""
le #1 $horadata
enquanto não $horadata *=* "name=""mostrador"""
le #1 $horadata
fim enquanto
fecha #1
internet termina
retorna

*trata a hora e a data obtida para aplicação ou exibição
@tratahora
seja p pos "value" $horadata
soma p 7
seja t tamanho $horadata
copia $horadata $horadata p t
seja p pos """" $horadata
subtrai p 1
copia $horadata $horadata 1 p
seja p pos " " $horadata
subtrai p 1
copia $data $horadata 1 p

soma p 4

seja t tamanho $horadata
copia $hora $horadata p t
copia $hh $hora 1 2
se $hora *=* "PM"
se $hh < 12  soma $hh 12
fim se
se $hora *=* "AM"
se $hh = 12 seja $hh "00"
fim se
seja t tamanho $hora
subtrai t 3
copia $hora $hora 3 t
concatena $hh $hora
seja $hora $hh
retorna

*termina o programa
@fim
Escreve "Ok."
escreve "Até logo."
termina mudo
