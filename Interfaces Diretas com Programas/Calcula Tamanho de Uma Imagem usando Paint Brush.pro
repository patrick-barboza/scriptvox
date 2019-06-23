* Script para calcular o tamanho de uma imagem
* Autor: Antonio Borges
* Modificado por: Tiago Melo Casal
* Em: 23/02/2002

* pede nome do arquivo
escreve "Calcula tamanho da imagem"
escreve
@denovo
escreve "Qual o nome do arquivo imagem?"
lê n

* aciona o paint brush
c := "pbrush "
c := c + n
executa c &
espera 2

* obtem o tamanho
aciona "CTRL+E"
espera 1
o := "Tamanho em polegadas: Largura "
m := "Tamanho em centímetros: Largura "
x := "Tamanho em pixels: Largura "
aciona "alt+o"
chama @tLA
o := o + l
o := o + " Altura "
o := o + a
aciona "alt+m"
chama @tLA
m := m + l
m := m + " Altura "
m := m + a
aciona "alt+x"
chama @tLA
x := x + l
x := x + " Altura "
x := x + a
desvia @fecha
@tLA
aciona "alt+l"
aciona "ctrl+c"
transfere para l
aciona "alt+a"
aciona "ctrl+c"
transfere para a
retorna

* fecha paint brush
@fecha
aciona "ALT+F4"
espera 1
aciona "ALT+F4"

* escreve valores obtidos
bipa
bipa
escreve o
bipa
escreve m
bipa
escreve x
i := ""
i := i + o
i := i + "  "
i := i + m
i := i + "  "
i := i + x
transfere de i
bipa
bipa
escreve "Esse resultado foi copiado para a área de transferência."
escreve "Se antes dessa operação havia algum resultado na área de"
escreve "transferência, ele foi apagado."
escreve
escreve "Deseja calcular o tamanho de outro arquivo?" &
@l
lê l &
se l="s" desvia @denovo
se l="#0#66" chama @f8
se l="#0#66" desvia @l
se l="#0#101" chama @Controlf8
se l="#0#101" desvia @l
escreve "Fim"
termina mudo


@f8
s := hora
copia h s 1 2
h := h + " horas e "
copia m s 4 5
m := m "minutos"
h := h + m
escreve h
retorna

@Controlf8
seja d dia
seja t data
concatena d "  "
copia r t 1 2
concatena r " de "
concatena d r
copia m t 4 5
substitui m "01" "janeiro de "
substitui m "02" "fevereiro de "
substitui m "03" "março de "
substitui m "04" "abril de "
substitui m "05" "maio de "
substitui m "06" "junho de "
substitui m "07" "julho de "
substitui m "08" "agosto de "
substitui m "09" "setembro de "
substitui m "10" "outubro de "
substitui m "11" "novembro de "
substitui m "12" "dezembro de "
concatena d m
copia n t 7 10
concatena d n
escreve d
retorna
