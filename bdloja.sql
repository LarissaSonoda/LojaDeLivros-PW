create database db_loja
default character set utf8
default collate utf8_general_ci;

use db_loja;


create table tbl_categoria
(	
    cd_categoria int primary key auto_increment,
    ds_categoria varchar(25) not null    
)
default charset utf8;


create table tbl_autor
(	
    cd_autor int primary key auto_increment,
    nm_autor varchar(45) not null    
)
default charset utf8;


create table tbl_livro
(	
    cd_livro int primary key auto_increment,
    no_isbn varchar(17) not null,
    cd_categoria int not null,
    nm_livro varchar(70) not null,
    cd_autor int not null,
    no_pag varchar(4) not null,
    vl_preco decimal(6,2) not null,
    qt_estoque int not null,
    ds_resumo_obra text not null,
    ds_capa varchar(255) not null,
    sg_lancamento enum('S','N') not null,
    constraint fk_cat foreign key(cd_categoria) references tbl_categoria(cd_categoria),
    constraint fk_autor foreign key(cd_autor) references tbl_autor(cd_autor)
)  
default charset utf8;


Insert into tbl_categoria values (default, 'Romance'),
(default, 'Mistério'),
(default, 'Ficção'),
(default, 'Fantasia'),
(default, 'Terror');


insert into tbl_autor values 
(default, 'Sarah J. Maas'), -- 1
(default, 'Kiera Cass'),	-- 2
(default, 'Louise Neill'),	-- 3
(default, 'Lucy Foley'),	-- 4
(default, 'John Green'),	-- 5
(default, 'J. K. Rowling'),	-- 6
(default, 'Kathleen Glasgow'),	-- 7
(default, 'Victoria Aveyard'),	-- 8
(default, 'Roberta Spindler'),	-- 9
(default, 'Nicola Yoon'),		-- 10
(default, 'Mary Shelley'),		-- 11
(default, 'Bel Rodrigues'),		-- 12
(default, 'Rick Riordan'),		-- 13
(default, 'Agatha Christie'),	-- 14
(default, 'Ransom Riggs'),		-- 15
(default, 'Lucy Maud Montgomery'), -- 16
(default, 'Jennifer Niven'),	-- 17
(default, 'David Levithan');	-- 18

select * from tbl_autor;

insert into tbl_livro values (default, '978-8501105875', '4', 'Corte de Espinhos e Rosas', '1', '434', '31.90', 100,

'<p>Ela roubou uma vida. Agora deve pagar com o coração. Corte de espinhos e rosas é primeiro volume da série best-seller, da mesma autora da saga Trono de vidro.

Num mundo dividido uma muralha mágica separa duas espécies. De um lado, os feéricos vivem dentro de suas fronteiras cheias de beleza e mistério; do outro, os humanos possuem apenas medo, desconfiança e dificuldades.

Feyre, filha de um casal de mercadores humanos e falidos, se torna caçadora para sustentar a família. Dura como as flechas que carrega, letal como sua pontaria, ela abandona as fantasias de garota e as troca pela árdua vida nas florestas ao redor de sua aldeia.

Sua única alegria é observar as cores e sonhar em capturá-las. Mas, na floresta, coberta de neve tudo é branco e árido; como o ódio pelos feéricos que carrega no coração; Como as telas que não pode comprar ou colorir. Até que um enorme lobo cruza seu caminho… Sem hesitar, Feyre dispara… uma flecha. Um ato de rebelião.

Após matar o lobo, uma criatura bestial surge exigindo uma reparação. Arrastada para além do muro, para uma terra mágica e traiçoeira – que ela só conhece por meio de lendas -, a jovem descobre que seu captor não é um animal, mas Tamlin, Grão Senhor da Terra Primaveril. Um feérico com um segredo, escondido sob uma máscara.  Ela descobre ainda que o então animal que havia assassinado era, na verdade, uma criatura mágica, uma fada zoomórfica transformada em lobo.

À medida que ela descobre mais sobre este mundo onde a magia impera, seus sentimentos por Tamlin passam da mais pura hostilidade até uma paixão avassaladora. Enquanto isso, uma sinistra e antiga sombra avança sobre o mund­­o das fadas e Feyre deve provar seu amor para detê-la ou Tamlin e seu povo estarão condenados.

Corte de espinhos e rosas é um livro de fantasia de tirar o fôlego. Memorável em todos os aspectos, com personagens complexos, enredo rico e um magnífico mundo de fantasia combinados impecavelmente para criar um romance épico.</p>', 
'acotar', 'N'),

(default, '978-8565765015', '1', 'A Seleção', '2', '368', '29.90', 100,
'<p> Muitas garotas sonham em ser princesas, mas este não é o caso de America Singer. Ela topa se inscrever na Seleção só para agradar a mãe, certa de que não será sorteada para participar da competição em que o príncipe escolherá sua futura esposa. Mas é claro que depois disso sua vida nunca mais será a mesma...

Para trinta e cinco garotas, a Seleção é a chance de uma vida. É a oportunidade de ser alçada a um mundo de vestidos deslumbrantes e joias valiosas. De morar em um palácio, conquistar o coração do belo príncipe Maxon e um dia ser a rainha.
America Singer, no entanto, estar entre as Selecionadas é um pesadelo. Significa deixar para trás o rapaz que ama. Abandonar sua família e seu lar para entrar em uma disputa ferrenha por uma coroa que ela não quer. E viver em um palácio sob a ameaça constante de ataques rebeldes.
Então America conhece pessoalmente o príncipe - e percebe que a vida com que sempre sonhou talvez não seja nada comparada ao futuro que nunca tinha ousado imaginar.</p>',
'aselecao', 'N'),

(default, '978-8594541574', '3', 'A Pequena Sereia & o reino das ilusões', '3', '224', '40.00', '50',
 '<p>Esqueça as histórias sobre sereias que você conhece. Esta é uma história diferente ― e necessária
. E tudo começa no fundo do mar. Com uma garota chamada Gaia, que sonha em ser livre de seu pai controlador,
 fugir de um casamento arranjado e descobrir o que realmente aconteceu à sua mãe desaparecida. Em seu 
 aniversário de quinze anos, quando finalmente sobe à superfície para conhecer o mundo de cima, Gaia 
 avista um rapaz em um naufrágio e se convence de que precisa conhecê-lo. Mas do que ela precisa abrir
 mão para transformar seu sonho em realidade? E será que vale a pena? A Pequena Sereia e o Reino das
 Ilusões chega para trazer um pouco mais de contos de fadas para a linha DarkLove, da DarkSide® Books.
 Mas não do jeito que você espera; aqui, a história original de Hans Christian Andersen ― e também suas 
 versões coloridas e afáveis em desenhos animados ― é reimaginada através de lentes feministas e ambientada
 em um mundo aquático em que mulheres são silenciadas diariamente ― um mundo que não difere tanto assim da 
 sociedade em que vivemos. No reino de ilusões comandado pelo Rei dos Mares, as sereias não recebem educação, 
 não têm direito de fala, devem se encaixar em um padrão de beleza impossível e sempre sorrir. É neste cenário
 que a autora irlandesa Louise O’Neill apresenta uma história sobre empoderamento e força feminina. Com narrativa 
 e olhar afiados, a autora ainda desenvolve aspectos do conto original que passaram batido, como o relacionamento 
 de Gaia com as irmãs e as camadas complexas da Bruxa do Mar. A Pequena Sereia e o Reino das Ilusões, que chega ao
 mundo acima da superfície da água com o padrão de qualidade que virou marca registrada da DarkSide® Books, mostra
 como, em um reino comandado pelo patriarcado, ter uma voz é arriscado. Mas também como querer usá-la é uma atitude
 extremamente poderosa e valiosa. Ainda mais em tempos tão sombrios.</p>',
 'apequenasereia', 'N'),
 
 (default, '978-8551005729', '5', 'A Última Festa', '4', '304', '30.90', '50', 
 '<p>Todo ano, nove amigos comemoram o réveillon juntos. Desta vez, apenas oito 
 vão voltar para a casa depois da festa.

Programado para acontecer em um cenário idílico, o réveillon que Miranda, Katie e os outros amigos que conheceram 
na faculdade passarão juntos este ano promete refeições deliciosas regadas a champanhe, música, jogos e conversas
 descontraídas.

No entanto, as tensões começam já na viagem de trem — o grupo não tem mais nada em comum além de um passado de 
convivência, feridas jamais cicatrizadas e segredos potencialmente destrutivos.

E então, em meio à grande festa da última noite do ano, o fio que os mantém unidos enfim arrebenta. No dia
 seguinte, alguém está morto e uma forte nevasca impede a vinda do resgate. Ninguém pode entrar. Ninguém 
 pode sair. Nem o assassino.

Contada em flashbacks a partir das perspectivas dos vários personagens, a história deste malfadado encontro
 é um daqueles mistérios de assassinato cheio de tensão e de ritmo perfeito. Com uma trama assustadora e brilhantemente 
 construída, A última festa planta no leitor a semente da dúvida: será que velhos amigos são sempre os melhores amigos?</p>',
 'ultimafesta', 'N');
 
 
 insert into tbl_livro values (default, '978-8580576832', '1', 'Quem é você, Alasca?', '5', '336', '19.90', '150', 
 '<p>Miles Halter estava em busca de um Grande Talvez. Alasca Young queria descobrir como sair do labirinto. 
 Suas vidas colidiram na Escola Culver Creek, e nada nunca mais foi o mesmo.

Miles Halter levava uma vidinha sem graça e sem muitas emoções (ou amizades) na Flórida. Ele tinha um 
gosto peculiar: memorizar as últimas palavras de grandes personalidades da história. Uma dessas personalidades,
 François Rabelais, um poeta do século XV, disse no leito de morte que ia “em busca de um Grande Talvez”.
 Para não ter que esperar a morte para encontrar seu Grande Talvez, Miles decide fazer as malas e partir.
 Ele vai para a Escola Culver Creek, um internato no ensolarado Alabama.

Lá, ele conhece Alasca Young. Ela tem em seu livro preferido, O general em seu labirinto ,
 de Gabriel García Márquez, a pergunta para a qual busca incessantemente uma resposta: “Como vou sair desse
 labirinto?” Inteligente, engraçada, louca e incrivelmente sexy, Alasca vai arrastar Miles para seu labirinto e
 catapultá-lo sem misericórdia na direção do Grande Talvez. Miles se apaixona por Alasca, mesmo sem entendê-la,
 mesmo tentando sem sucesso decifrar o enigma de seus olhos verde-esmeralda.</p>', 'alasca', 'N'),
 
 (default, '978-8532530783', '4', 'Harry Potter e a Pedra Filosofal', '6', '208', '20.95', '1000',
 '<p>Harry Potter é um garoto cujos pais, feiticeiros, foram assassinados por um poderosíssimo
 bruxo quando ele ainda era um bebê. Ele foi levado, então, para a casa dos tios que nada tinham
 a ver com o sobrenatural. Pelo contrário. Até os 10 anos, Harry foi uma espécie de gata borralheira:
 maltratado pelos tios, herdava roupas velhas do primo gorducho, tinha óculos remendados e era tratado
 como um estorvo. No dia de seu aniversário de 11 anos, entretanto, ele parece deslizar por um buraco 
 sem fundo, como o de Alice no país das maravilhas, que o conduz a um mundo mágico. Descobre sua verdadeira 
 história e seu destino: ser um aprendiz de feiticeiro até o dia em que terá que enfrentar a pior força do mal, 
 o homem que assassinou seus pais. O menino de olhos verde, magricela e desengonçado, tão habituado à rejeição, 
 descobre, também, que é um herói no universo dos magos. Potter fica sabendo que é a única pessoa a ter sobrevivido 
 a um ataque do tal bruxo do mal e essa é a causa da marca em forma de raio que ele carrega na testa. 
 Ele não é um garoto qualquer, ele sequer é um feiticeiro qualquer ele é Harry Potter, símbolo de poder, 
 resistência e um líder natural entre os sobrenaturais. A fábula, recheada de fantasmas, paredes que falam,
 caldeirões, sapos, unicórnios, dragões e gigantes, não é, entretanto, apenas um passatempo.</p>', 'hp', 'S'),
 
 (default, '978-8542209334', '3', 'Garota em pedaços', '7', '384', '37.90', '100',
 '<p>Além de enfrentar anos de bullying na escola, Charlotte Davis perde o pai e
 a melhor amiga, precisando então lidar com essa dor e com as consequências do 
 Transtorno do Controle do Impulso um distúrbio que leva as pessoas a se automutilarem. 
 Quando o plano de saúde de sua mãe suspende seu tratamento numa clínica psiquiátrica
 para onde foi após se cortar até quase ficar sem vida , Charlotte Davis troca a gelada 
 Minneapolis pela ensolarada Tucson, no Arizona (EUA), na tentativa de superar seus medos
 e decepções. Apesar do esforço em acertar, nessa nova fase da vida ela acaba se envolvendo
 com uma série de tipos não muito inspiradores. Cansada de se alimentar do sofrimento, a 
 jovem se imbui de uma enorme força de vontade e decide viver e não mais sobreviver. 
 Para fugir do círculo vicioso da dor, Charlotte usa seu talento para o desenho e foca
 em algo produtivo, embarcando de cabeça no mundo das artes. Esse é o caminho que ela traça 
 em busca da cura para as feridas deixadas por suas perdas e os cortes profundos e reais que
 imprimiu em seu corpo. Romance de estreia de Katlheen Glasgow, que figurou na lista dos mais
 vendidos do jornal The New York Times e dos melhores livros do ano de 2016 da Amazon (EUA) e da revista
 TeenVogue. Nele, os leitores vão se emocionar e se inspirar na história da adolescente de 17 anos que,
 por conta de sofrer de Transtorno do Controle do Impulso, pratica o cutting um distúrbio que afeta um 
 grande número de jovens brasileiros e também personalidades do universo teen, como Demi Lovato e Britney Spears,
 entre outras.</p>', 'garotaempedacos', 'N'),
 
 (default, '978-8565765695', '2', 'A Rainha Vermelha', '8', '424', '24.90', '1000',
 '<p>O mundo de Mare Barrow é dividido pelo sangue: vermelho ou prateado. Mare e sua
 família são vermelhos: plebeus, humildes, destinados a servir uma elite prateada 
 cujos poderes sobrenaturais os tornam quase deuses. Mare rouba o que pode para ajudar
 sua família a sobreviver e não tem esperanças de escapar do vilarejo miserável onde mora.
 Entretanto, numa reviravolta do destino, ela consegue um emprego no palácio real, onde, 
 em frente ao rei e a toda a nobreza, descobre que tem um poder misterioso… Mas como isso 
 seria possível, se seu sangue é vermelho? Em meio às intrigas dos nobres prateados, as ações 
 da garota vão desencadear uma dança violenta e fatal, que colocará príncipe contra príncipe
 - e Mare contra seu próprio coração.</p>', 'redqueen', 'N');
 
 
 insert into tbl_livro values
 (default, '978-8578552497', '3', 'A Torre Acima do Véu', '9', '288', '29.90', '100',
 '<p>Quando uma densa e venenosa névoa surge misteriosamente, pânico e morte tomam
 conta do planeta. Os poucos sobreviventes se refugiam no dos megaedifícios e arranha-céus
 das megalópoles. Acuados, vivem uma nova era de privações e sob o ataque constante de seres
 assustadores, chamados apenas de sombras. Suas vidas logo passam a depender da proteção da
 Torre, aquela que controla os armamentos e a tecnologia que restaram. Cinquenta anos se passam,
 na megacidade Rio-Aires, Beca vive do resgate de recursos há muito abandonados nos andares 
 inferiores, junto com seu pai e seu irmão. A profissão, perigosa por natureza, torna-se ainda
 mais letal quando ela participa de uma negociação traiçoeira e se vê cada vez mais envolvida 
 em perigos e segredos que ameaçam muito mais do que sua vida ou a de sua família.</p>', 'torreacimadoveu', 'N'),
 
 (default, '978-8580416992', '1', 'Tudo e todas as coisas', '10', '280', '24.90', '100',
 '<p>A doença que eu tenho é rara e famosa. Basicamente, sou alérgica ao mundo.
 Não saio de casa. Não saí uma vez sequer em 17 anos. As únicas pessoas que eu vejo
 são minha mãe e minha enfermeira, Carla.

Então, um dia, um caminhão de mudança para na frente da casa ao lado. 
Eu olho pela janela e o vejo. Ele é alto, magro e está todo de preto: blusa, calça, jeans,
 tênis e um gorro que cobre o cabelo. Ele percebe que eu estou olhando e me encara. Seu nome é Olly.

Talvez não seja possível prever tudo, mas algumas coisas, sim. Por exemplo, vou me apaixonar por Olly.
 Isso é certo. E é quase certo que isso vai provocar uma catástrofe.</p>', 'tudoetodasascoisas', 'N'),
 
 (default, '978-8594540188', '5', 'Frankenstein', '11', '240', '40.00', '1000', 
 '<p>Victor Frankenstein desde muito jovem se dedicou aos estudos da filosofia e 
 das ciências naturais. Até que, em uma experiência bem-sucedida (que lhe sugou a
 energia e o afastou do convívio dos seus entes queridos), ele foi capaz de dar vida
 a um ser de feições e trejeitos assustadores. A partir de então, criador e criatura
 passam a viver um jogo de perseguição repleto de sangue e horror – a primeira obra de
 ficção científica da literatura e um clássico do terror.</p>', 'frankenstein', 'N'),
 
 (default, '978-8501114990', '3', '13 segundos', '12', '304', '26.90', '1000',
 '<p>O primeiro livro solo de Bel Rodrigues mostra como o machismo pode, em 
 apenas 13 segundos, mudar completamente a vida de uma garota.Lola está no 
 último ano do ensino médio e acabou de terminar um relacionamento. Ela sabe
 que foi a melhor decisão, mas ainda assim não é fácil encarar o vestibular 
 e um coração partido ao mesmo tempo. Tudo que Lola quer agora é colocar a 
 vida em ordem, descobrir a si mesma e reavaliar suas prioridades. Sua maior
 paixão é o canto, e por isso, incentivada pelos amigos, ela cria um canal no 
 Youtube onde posta covers de suas músicas favoritas.Ela também quer se divertir,
 sair para beber com os amigos e conhecer pessoas. Em uma dessas noites que ela
 se envolve com John. O que era para ser só uma noite acaba ficando mais complicado
 quando ela descobre que ele faz intercâmbio no colégio dela... e do ex. Lola não
 quer se envolver, mas é difícil ignorar John, com todo aquele charme canadense.
 E quando tudo parece ter se alinhado, treze segundos são suficientes para mudar
 drasticamente a vida da garota.13 segundos é um livro potente, que dialoga com
 os julgamentos que mulheres jovens enfrentam cotidianamente simplesmente por
 buscarem serem livres, por quererem ser elas mesmas.</p>', '13segundos', 'N');
 
 
 insert into tbl_livro values
 (default, '8580575397', '2', 'Percy Jackson', '13', '288', '29.90', '100',
 '<p>A vida do adolescente Percy Jackson, que está sempre pronto para entrar
 em uma confusão, torna-se bem mais complicada quando ele descobre que é filho
 do deus grego Poseidon. Em um campo de treinamento para filhos das divindades,
 Percy aprende a tirar proveito de seus poderes divinos e se prepara para a maior
 aventura de sua vida</p>', 'pj', 'N');
 
 insert into tbl_livro values
 (default, '978-8525057013', '2', 'E Não Sobrou Nenhum', '14', '304', '22.90', '400',
 '<p>Uma ilha misteriosa, um poema infantil, dez soldadinhos de porcelana e muito
 suspense são os ingredientes com que Agatha Christie constrói seu romance mais importante.
 Na ilha do Soldado, antiga propriedade de um milionário norte-americano, dez pessoas sem
 nenhuma ligação aparente são confrontadas por uma voz misteriosa com fatos marcantes de
 seus passados.

Convidados pelo misterioso mr. Owen, nenhum dos presentes tem muita certeza de por que estão 
ali, a despeito de conjecturas pouco convincentes que os leva a crer que passariam um agradável
 período de descanso em mordomia. Entretanto, já na primeira noite, o mistério e o suspense se 
 abatem sobre eles e, num instante, todos são suspeitos, todos são vítimas e todos são culpados.

É neste clima de tensão e desconforto que as mortes inexplicáveis começam e, sem comunicação 
com o continente devido a uma forte tempestade, a estadia transforma-se em um pesadelo. Todos
 se perguntam: quem é o misterioso anfitrião, mr. Owen? Existe mais alguém na ilha? O assassino
 pode ser um dos convidados? Que mente ardilosa teria preparado um crime tão complexo? E, 
 sobretudo, por quê?

São essas e outras perguntas que o leitor será desafiado a resolver neste fabuloso romance
 de Agatha Christie, que envolve os espíritos mais perspicazes num complexo emaranhado de 
 situações, lembranças e acusações na busca deste sagaz assassino. Medo, confinamento e 
 angústia: que o leitor descubra por si mesmo porque E não sobrou nenhum foi eleito o melhor
 romance policial de todos os tempos.</p>', 'naosobrounenhum', 'N');
 
 
 select count(*) from tbl_livro;
 select * from tbl_livro;
 select no_isbn, nm_livro from tbl_livro;
 select * from tbl_categoria;
 
 
 
create view vw_livro 
as select
	tbl_livro.cd_livro,
    tbl_livro.no_isbn,
    tbl_categoria.ds_categoria,
    tbl_livro.nm_livro,
    tbl_autor.nm_autor,
    tbl_livro.no_pag,
    tbl_livro.vl_preco,
    tbl_livro.qt_estoque,
    tbl_livro.ds_resumo_obra,
    tbl_livro.ds_capa,
    tbl_livro.sg_lancamento 
    from tbl_livro inner join tbl_autor
    on tbl_livro.cd_autor = tbl_autor.cd_autor
    inner join tbl_categoria
    on tbl_livro.cd_categoria = tbl_categoria.cd_categoria;
    
    
    

select * from vw_livro;

use db_loja;

select * from tbl_usuario;
create table tbl_usuario(
	cd_usuario int primary key auto_increment,
    nm_usuario varchar(80) not null,
    ds_email varchar(80) not null,
    ds_senha varchar(6) not null,
    ds_status boolean not null,
    ds_endereco varchar(80) not null,
    ds_cidade varchar(30) not null,
    no_cep char(9) not null
) default charset utf8;

insert into tbl_usuario values
(default, 'Larissa Sonoda', 'lari@email.com', '123456', 1, 'Rua 1234', 'São Paulo', '98765-321'),
(default, 'Ana Clara', 'aninha@gmail.com', '098765', 0, 'Rua 1234', 'São Paulo', '98765-321'),
(default, 'Gustavo Pereira', 'gus@gmail.com', '543218', 1, 'Rua 28', 'Santos', '09877-456');

select * from tbl_usuario;
 CREATE USER 'loja'@'localhost' IDENTIFIED WITH mysql_native_password BY '123456';
 GRANT ALL PRIVILEGES ON db_loja.* TO 'loja'@'localhost' WITH GRANT OPTION;
