create database receitas
use receitas

create table receitas(
id int primary key auto_increment,
nome varchar(50) unique not null,
categoria varchar(20) not null, -- doce, salgado, bebida, recheio, cobertura
preparo varchar(5000) not null,
tempo_preparo varchar(50),
rendimento varchar(50),
dificuldade varchar(50),
imagem varchar(100)
)


create table ingredientes(
id int primary key auto_increment,
id_receita int not null,
ingrediente varchar(100) not null,
tipo varchar(10) not null, -- principal, recheio, cobertura
foreign key (id_receita) references receitas(id)
)

select * from receitas 

select ingrediente as ingredientes from ingredientes where id_receita = 2 and tipo = "principal"
select ingrediente as ingredientes_recheio from ingredientes where id_receita = 2 and tipo = "recheio"
select ingrediente as ingredientes_cobertura from ingredientes where id_receita = 2 and tipo = "cobertura"

insert into receitas values
(null, "Brigadeirão", "Doce",
 "Bata no liquidificador o leite condensado, o creme de leite, o chocolate em pó, a manteiga e os ovos, até formar um creme homogêneo. 
 Despeje em uma forma redonda com furo untada com manteiga. Cubra com papel-alumínio e leve ao forno em temperatura de 180ºC , em banho-maria, por cerca de 1 hora e 30 minutos, ou até ficar firme. 
 Espere esfriar um pouco antes de desenformar. Cubra com o chocolate granulado e leve à geladeira. Sirva gelado.",
 "15 min", "8 porções", "Fácil", "brigadeirao.PNG"),
(null, "Torta de morango", "Doce",
 "Para fazer a massa, misture a farinha peneirada com o açúcar. Acrescente o ovo, a manteiga e a água e misture bem até formar uma massa homogênea. 
 Forre o fundo e as laterais de uma forma de fundo removível com essa massa e leve ao forno preaquecido a 180o por cerca de 20 a 30 minutos, até ficar levemente dourada. 
 Enquanto isso, faça a cobertura. Prepare a gelatina usando metade da água indicada nas instruções da embalagem e reserve. Corte os morangos ao meio e reserve. 
 Em seguida, prepare o recheio. Misture o amido de milho com um pouco de leite, para dissolver. Em uma panela, misture o leite condensado, o amido, o restante do leite, as gemas e a manteiga. Leve ao fogo baixo, mexendo sempre, até engrossar. Acrescente a baunilha, misture e retire do fogo. 
 Para montar a torta, despeje o recheio na massa já assada. Espalhe os pedaços de morango por cima. Em seguida, despeje sobre eles a gelatina. Leve a torta à geladeira até ficar firme.",
 "60 min", "12 porções", "Fácil", "torta_morango.jpg"), 
 (null, "Musse de chocolate", "Doce",
 "Derreta o chocolate em banho-maria. Aqueça o creme de leite e misture-o ao chocolate, até formar um creme homogêneo. Retire do fogo e reserve. 
 Bata as claras em neve e adicione o açúcar. Em seguida, misture delicadamente as claras ao chocolate. 
 Coloque a musse em formas individuais, decore com as raspas de chocolate e leve à geladeira. 
 Dica: Você também pode decorar as suas musses com chantili e cerejas.",
 "20 min", "6 porções", "Fácil", "musse.jpg"), 
  (null, "Bolo de caneca de chocolate", "Doce",
 "Misture todos os ingredientes secos. Adicione aos poucos os demais ingredientes e misture bem. 
 Unte uma caneca grande (daquelas de sopa) ou duas canecas normais com margarina e coloque a massa. Espirre um pouquinho de água com a mão sobre o bolo. Leve ao microondas por 1:30min.",
 "5 min", "2 porções", "Fácil", "bolo_caneca.jpeg"), 
 (null, "Bolo Indiano", "Doce",
 "Massa: Bata as claras em neve com uma pitada de sal. Adicione aos poucos os açúcares, a canela, as gemas e o óleo e bata mais um pouco. Com a batedeira desligada, misture a farinha de rosca e o fermento, delicadamente. 
 Despeje em uma forma redonda (20 a 23cm) untada e polvilhada com farinha de rosca e leve para assar por 35 a 40 min a 180 graus. 
 Recheio: Misture tudo na panela até dar o ponto de brigadeiro mole e deixe esfriar um pouco. 
 Montagem: Desenforme o bolo, corte ao meio, regue uma parte com leite, coloque parte do recheio, cubra com a outra parte do bolo, regue com leite e cubra com o restante do recheio. Polvilhe canela por cima.",
 "50 min", null, "Fácil", "bolo_indiano.jpg")
 
 
insert into ingredientes values 
(null, 1, "1 lata de leite condensado", "principal"),
(null, 1, "1 lata de creme de leite", "principal"),
(null, 1, "1 xícara (chá) de chocolate em pó", "principal"),
(null, 1, "1 colher (sopa) de manteiga", "principal"),
(null, 1, "3 ovos", "principal"),
(null, 1, "1 xícara (chá) de chocolate granulado", "principal"),
(null, 2, "2 xícaras (chá) de farinha de trigo", "principal"),
(null, 2, "1/2 xícara (chá) de açúcar", "principal"),
(null, 2, "1 ovo", "principal"),
(null, 2, "2 colheres de manteiga", "principal"),
(null, 2, "1 colher (sopa) de água", "principal"),
(null, 2, "1 lata de leite condensado", "recheio"),
(null, 2, "1 lata (a mesma medida) de leite", "recheio"),
(null, 2, "1 colher (sopa) de amido de milho", "recheio"),
(null, 2, "4 gemas", "recheio"),
(null, 2, "1 colher (sopa) de manteiga", "recheio"),
(null, 2, "1 colher (sopa) de essência de baunilha", "recheio"),
(null, 2, "1 caixa de gelatina sabor morango", "cobertura"),
(null, 2, "1 caixa de morango", "cobertura"),
(null, 3, "200 g de chocolate meio amargo picado", "principal"),
(null, 3, "200 g de chocolate meio amargo picado", "principal"),
(null, 3, "3 claras", "principal"),
(null, 3, "3 colheres (sopa) de açúcar", "principal"),
(null, 3, "Raspas de chocolate", "principal"),
(null, 4, "1/4 xícara (chá) de farinha de trigo", "principal"),
(null, 4, "1/4 xícara (chá) de açúcar", "principal"),
(null, 4, "2 colheres (sopa) de cacau em pó", "principal"),
(null, 4, "1 pitada de sal", "principal"),
(null, 4, "1/2 colher (sopa) de fermento em pó", "principal"),
(null, 4, "1 ovo", "principal"),
(null, 4, "3 colheres (sopa) de leite", "principal"),
(null, 4, "1/2 colher (chá) de essência de baunilha", "principal"),
(null, 4, "3 colheres (sopa) de manteiga derretida", "principal"),
(null, 5, "5 ovos", "principal"),
(null, 5, "1/2 xícara (chá) de açúcar refinado", "principal"),
(null, 5, "1/2 xic (chá) de açúcar mascavo", "principal"),
(null, 5, "3 colheres (sopa) óleo", "principal"),
(null, 5, "1 1/2 xic (chá) de farinha de rosca", "principal"),
(null, 5, "1 colher (chá) de canela", "principal"),
(null, 5, "Pitada de sal", "principal"),
(null, 5, "1 colher (chá) de fermento em pó", "principal"),
(null, 5, "2 latas de leite condensado", "recheio"),
(null, 5, "2 gemas", "recheio"),
(null, 5, "1 colher (sopa) de manteiga", "recheio"),
(null, 5, "200g de creme de leite", "recheio")


insert into receitas values
(null, "Bolo de cenoura", "Doce",
 "Coloque no liquidificador as cenouras, os ovos, o óleo, o sal e bata até ficar homogêneo. Depois aos poucos acrescente o açúcar. 
Ao terminar de bater, numa tijela, coloque a massa e também aos poucos misture a farinha com o auxílio de um fouet.
Acrescente o fermento e mexa levemente.
Colocar no forno a 200 graus por mais ou menos 30 minutos.
Para fazer a cobertura, misture todos os ingredientes numa panela e leve ao fogo baixo mexendo até ferver, em seguida despeje e cobertura quente em cima do bolo já frio.
Dica: Você pode usar outras coberturas, como brigadeiro ou ganache.",
 "15 min", "12 porções", "Fácil", "bolo_cenoura.jpg"),
(null, "Bolinho de Chuva", "Doce",
 "Misture os ingredientes líquidos, depois os secos, deixando a farinha por último, coloque o suficiente de farinha até dar o ponto (a massa precisa ficar mole, mas nem tanto).
Esquente o óleo para fritar, basta de 2 a 3 dedos de óleo na panela. Com uma colher, pegue porções da massa e frite em fogo baixo para cozinhar por dentro.
Passe na mistura de açúcar com canela. Dica: mergulhe a colher no óleo antes de pegar porções da massa, para a massa não grudar na colher. 
Dica 2: Coloque raspas de limão, essência de baunilha ou chocolate em pó na massa para ter um sabor especial nos bolinhos.",
 "15 min", null, "Médio", "bolinho_chuva.jpg"),
 (null, "Bolo mágico de três camadas", "Doce",
 "Preaqueça o forno a 160º C. Unte e forre uma forma de bolo de 20 cm x 20 cm com papel manteiga.
Bata as claras com uma batedeira até ponto de neve. Reserve.
Coloque as gemas e o açúcar em uma tigela e bata até ficar amarelo pálido. Adicione o extrato de baunilha, a manteiga e as raspas de limão, e bata até incorporar.
Adicione a farinha e bata até misturar.
Acrescente o leite aos poucos, e continue batendo até ficar bem misturado.
Acrescente as claras em neve na massa, sem bater, apenas para incorporá-las.
Despeje a massa na forma de bolo preparada e leve ao forno por 55 minutos ou até que a parte de cima esteja dourada e o bolo não 'mexa' ao balançar suavemente a forma.
Retire do forno e deixe esfriar. Corte em pedaços e cubra com açúcar de confeiteiro.",
 "30 min", "12 porções", "Médio", "bolo_magico.jpg"),
 (null, "Cookies", "Doce",
 "Preaqueça o forno a 190°C.
Em um recipiente grande, bata a manteiga, o açúcar mascavo e o açúcar refinado até que a mistura fique cremosa e com uma cor clara.
Adicione os ovos e a essência de baunilha até que a mistura fique homogênea.
Adicione a farinha e o bicarbonato de sódio, batendo suavemente a mistura até que forme uma massa cremosa.
Adicione gentilmente as gotas de chocolate e misture.
Com uma colher, pegue bolas de massa e coloque em uma assadeira forrada com papel manteiga. Asse por 12 minutos a 200°C e depois sirva!",
 "30 min", "30 porções", "Fácil", "cookies.jpg"),
  (null, "Sorvete de morango recheado na travessa", "Doce",
 "Bata todos os ingredientes do sorvete no liquidificador. Em uma travessa, coloque metade do sorvete e esperar congelar. 
 Enquanto isso, coloque o leite condensado em uma panela e cozinhe até o ponto de um brigadeiro mole, mexendo sempre, e deixe esfriar.
 Quando o sorvete estiver congelado, acrescentar o recheio e voltar para o congelador, até congelar.
 Depois, coloque o resto da massa de sorvete por cima e deixe congelar.",
 "30 min", "12 porções", "Fácil", "sorvete_morango.jpg")
 
 
 
insert into ingredientes values 
(null, 6, "3 cenouras", "principal"),
(null, 6, "4 ovos", "principal"),
(null, 6, "1 xícara (chá) de óleo", "principal"),
(null, 6, "pitada de sal", "principal"),
(null, 6, "2 xícaras (chá) de açúcar", "principal"),
(null, 6, "2 xícaras (chá) de farinha de trigo", "principal"),
(null, 6, "1 colher (sopa) de fermento em pó", "principal"),
(null, 6, "1 xícara (sopa) de açúcar", "cobertura"),
(null, 6, "4 colheres (sopa) de leite", "cobertura"),
(null, 6, "4 colheres (sopa) de chocolate em pó", "cobertura"),
(null, 6, "1 colher (sopa) de margarina", "cobertura"),
(null, 7, "1 ovo", "principal"),
(null, 7, "1/2 xícara de leite", "principal"),
(null, 7, "2/3 xícara de açúcar", "principal"),
(null, 7, "1 colher (sopa) de fermento", "principal"),
(null, 7, "1 colher (sopa) de amido de milho", "principal"),
(null, 7, "Aproximadamente 2 xic. de farinha de trigo", "principal"),
(null, 7, "Acúcar com canela", "principal"),
(null, 8, "4 claras", "principal"),
(null, 8, "4 gemas", "principal"),
(null, 8, "3/4 xícara (chá) de açúcar", "principal"),
(null, 8, "2 colheres (sopa) de extrato de baunilha", "principal"),
(null, 8, "1/2 xícara (ou 115 gramas) de manteiga sem sal derretida", "principal"),
(null, 8, "2 colheres de sopa de raspas de limão", "principal"),
(null, 8, "3/4 xícara (chá) de farinha de trigo", "principal"),
(null, 8, "2 xícaras (ou 500ml) de leite morno", "principal"),
(null, 8, "Açúcar de confeiteiro para polvilhar", "principal"),
(null, 9, "2 xícaras (chá) de manteiga derretida", "principal"),
(null, 9, "2 xícaras (chá) de açúcar mascavo ", "principal"),
(null, 9, "2 xícaras (chá) de açúcar refinado ", "principal"),
(null, 9, "4 ovos grandes", "principal"),
(null, 9, "1 colher (sopa) de essência de baunilha", "principal"),
(null, 9, "5 xícaras (chá) de farinha de trigo", "principal"),
(null, 9, "2 colheres (chá) de bicarbonato de sódio", "principal"),
(null, 9, "4 xícaras (chá) de gotas de chocolate", "principal"),
(null, 10, "1 kg de morango", "principal"),
(null, 10, "1/2 kg de açúcar", "principal"),
(null, 10, "suco de 1 limão", "principal"),
(null, 10, "2 latas de leite condensado", "recheio")
 