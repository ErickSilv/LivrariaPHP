create database bd_EditorantB
default character set utf8
default collate utf8_general_ci;

use  bd_EditorantB;

create table tbl_categoria
(	
	cd_categoria int primary key auto_increment,
    ds_categoria varchar(25) not null    
)
default charset utf8;

create table tbl_autor
(	
	cd_autor int primary key auto_increment,
    nm_autor varchar(25) not null    
)
default charset utf8;

create table tbl_livro
(	
	cd_livro int primary key auto_increment,
    no_isbn varchar(17) not null,
    cd_categoria int not null,
    nm_livro varchar(60) not null,
    cd_autor int not null,
    no_pag varchar(4) not null,
    vl_preco decimal(6,2) not null,
    ds_resumo_obra text not null,
    ds_capa varchar(25),
    sg_lancamento enum('S','N') not null,
    constraint fk_cat foreign key(cd_categoria) references tbl_categoria(cd_categoria),
    constraint fk_autor foreign key(cd_autor) references tbl_autor(cd_autor)
)
default charset utf8;


insert into tbl_categoria
values(default,'Design'),
(default, 'Programação'),
(default, 'Aplicativos'),
(default, 'Robótica'),
(default, 'Mobile');


insert into tbl_autor
values(default,'Adriano Pataro'),		-- codigo 1
(default, 'Maurício Samy Silva'),		-- codigo 2	
(default, 'Larry Ullman'),				-- codigo 3
(default, 'Nelson Glauber'),			-- codigo 4
(default, 'Greg Shackles'),				-- codigo 5
(default, 'Ricardo R. Lecheta'),		-- codigo 6
(default, 'Hélio Engholm Júnior'),		-- codigo 7
(default, 'Robson Santos da Silva'),	-- codigo 8
(default, 'Loiane Groner'),				-- codigo 9
(default, 'Gordon McComb');				-- codigo 10


insert into tbl_livro
values
(Default,'978-85-7522-729-9','3','Dominando o Excel 2019','1','488','93.00',
'<p>O Excel é o software de planilha eletrônica mais utilizado no mundo, com recursos extremamente poderosos. 
Se você deseja ingressar neste mundo das planilhas, mas não tem nenhum conhecimento, este livro é ideal para você.</p>
<p>Você aprenderá recursos que vão desde o layout do Excel, passando por comandos importantes de planilhas, fórmulas,
 formatação, impressão, gráficos, até recursos avançados, como modelo de dados, dashboards, macros e programação VBA.</p>',
 'excel_2019','S'),
 

 (Default,'978-85-7522-392-5','1','Web Design Responsivo','2','336','73.00',
'<p>Este livro foi escrito para pessoas envolvidas na criação de sites tanto na área de design quanto na de desenvolvimento
 e programação, que desejam criar interfaces usáveis e acessíveis em qualquer dispositivo independentemente de suas 
 características, isto é, que se adaptem às mais variadas resoluções de tela.</p>
 <p>O objetivo do livro é fornecer informações detalhadas das técnicas do design responsivo, estudando seus princípios e
 detalhando os métodos e as tecnologias aplicáveis. Explicações teóricas em linguagem corrente e clara, dispensando, sempre
 que possível, o jargão técnico avançado, são acompanhadas de exemplos práticos detalhados passo a passo e complementados por
 arquivo HTML para consulta.</p>', 'web_responsivo','S'),
 

(Default,'978-85-7522-632-2','1','CSS Grid Layout','2','176','45.00',
'<p>A criação de Layout CSS sempre foi uma tarefa trabalhosa, mas agora os profissionais têm uma ferramenta poderosa ao seu
 alcance, o CSS Grid Layout, uma nova especificação do W3C, que veio para resolver praticamente todos os problemas de 
 posicionamento na tela. Utilizando um novo método de layout CSS, bidimensional, com linhas e colunas, mais simples e muito
 mais fácil de usar, permite controlar o tamanho e a posição dos componentes da interface e seus conteúdos. Não será mais
 necessário inflar a marcação HTML com elementos desnecessários para a criação de layouts CSS.</p>
 <p>Explicações teóricas são abordadas em linguagem didática, dispensando, sempre que possível, o jargão técnico avançado,
 além de serem acompanhadas de exemplos práticos explicados passo a passo e complementados por arquivos HTML, disponíveis
 online para consulta e download.</p>', 'css_grid','N'),
 
 
 (Default,'978-85-7522-397-0','2','E-commerce com PHP e MySQL','3','680','129.00',
'<p>Neste guia completo para a criação de sites de e-commerce usando PHP e MySQL, o renomado autor Larry Ullman conduz 
 você por todos os passos do processo de desenvolvimento – design da interface visual, criação do banco de dados, 
 apresentação do conteúdo, criação de um catálogo online, administração do carrinho de compras, tratamento dos pedidos,
 processamento dos pagamentos e atendimento dos pedidos – sempre enfatizando a segurança e as boas práticas ao longo
 do caminho. Não importa se você é relativamente iniciante na área de e-commerce ou se é um desenvolvedor web experiente,
 é certo que você irá aprender algo novo.</p>
 <p>O livro utiliza dois exemplos completos de e-commerce que contêm vários recursos e têm diversos objetivos, com o
 intuito de apresentar a maior variedade possível do que significa fazer o design de um site eficiente de e-commerce.</p>',
 'ecommerce_php','S');
 
 --  segunda parte
 
insert into tbl_livro
values 
(Default,'978-85-7522-726-8','5','Dominando o Android com Kotlin','4','1064','159.00',
'<p>O Android é a plataforma do Google para dispositivos móveis que se tornou líder absoluta no mercado mundial, e a 
 quantidade de recursos disponibilizada para os desenvolvedores permite criar uma envolvente e estimulante interação 
 do usuário com o dispositivo..</p>
 <p>Dominando o Android com Kotlin apresenta por meio de exemplos práticos, desde conceitos mais básicos até as mais
 avançadas técnicas de desenvolvimento de aplicativos para a plataforma mobile do Google.</p>',
 'mobile_kotllin','S'),
 
 
 (Default,'978-85-7522-438-0','1','Fundamentos de HTML5 e CSS3','2','304','69.00',
'<p>O livro Fundamentos de HTML5 e CSS3 tem o objetivo de fornecer aos iniciantes e estudantes da área de desenvolvimento
 web conceitos básicos e fundamentos da marcação HTML e estilização CSS, para a criação de sites, interfaces gráficas e 
 aplicações para a web.</p>
 <p>Maujor aborda as funcionalidades da HTML5 e das CSS3 de forma clara, em linguagem didática, mostrando vários exemplos
 práticos em funcionamento no site do livro.</p>
 <p>Desenvolver layouts simples com uso das CSS3</p>',
 'fundamentosHtml_css','N'),
 
(Default,'978-85-7522-322-2','5','Construindo Aplicativos Móveis com C#','5','200','59.00',
'<p>É verdade: você pode criar aplicativos nativos para iOS, Android e Windows Phone com C# e o .NET Framework – com a
 ajuda do MonoTouch e do Mono for Android. Este guia prático mostra como reutilizar um código base nas três plataformas
 combinando a camada de lógica de negócio do seu aplicativo C# com interfaces de usuário (UI) separadas e completamente
 nativas. É uma união ideal do desenvolvimento específico para plataformas e a filosofia “escreva uma vez, execute em
 qualquer lugar”.</p>
 <p>Criando uma série de aplicativos simples, você experimentará as vantagens de usar .NET no desenvolvimento para 
 dispositivos móveis e aprenderá como escrever aplicativos completos que acessam os recursos únicos das três plataformas
 móveis mais importantes do momento.</p>
 <p>Leia e grave dados usando o sistema de arquivos (filesystem) e o banco de dados local de cada plataforma.</p>',
 'ap_moveisCSharp','N'),
 
 
 (Default,'978-85-7522-479-3','5','Android Essencial','6','384','79.00',
'<p>O Android é o sistema operacional móvel mais utilizado no mundo, e o objetivo deste livro é apresentar ao leitor os 
conceitos essenciais do desenvolvimento de aplicativos para Android, por meio de uma explicação simples e prática..</p>
 <p>Android Essencial é um resumo do livro Google Android, 5ª edição, com o objetivo de prepará-lo rapidamente para o
 mercado. É para leitores que não querem rodeios e precisam aprender logo, seja por questões de estudos ou por uma
 necessidade de trabalho.</p>
 <p>Este livro utiliza o Android Studio, focado nas boas práticas de interface do Google e do Material Design, e oferece
 uma abordagem prática direcionada ao desenvolvimento de aplicativos. Durante a leitura você vai desenvolver um
 aplicativo completo, com boa usabilidade de interface e com acesso a web services e banco de dados, além de utilizar
 recursos de multimídia e mapas.</p>', 'android_esssencial','N');
 
 
 -- terceira parte
 
insert into tbl_livro
values 
 (Default,'978-85-7522-425-0','3','Computação em nuvem com o Office 365','7','272','59.00',
'<p>O Microsoft Office 365 é uma tecnologia revolucionária que permite aos usuários e às empresas de todos os 
tamanhos criar um escritório virtual na nuvem, que pode ser acessado de qualquer lugar a qualquer momento, além de
 permitir o armazenamento e a execução de aplicações hospedadas em datacenters da Microsoft.</p>
 <p>Este livro mostra como utilizar o Office 365, o SharePoint e o Lync em suas atividades diárias, seja como 
 estudante, empresário ou profissional de qualquer área do conhecimento. Usufrua de recursos que, até a criação
 do Office 365, eram utilizados apenas por grandes empresas por causa dos altos custos.</p>
 <p>O Office 365 contém uma série de subprodutos e aplicações, e este livro vai lhe ensinar a trabalhar com eles.
 Se você está pensando em iniciar o uso do Office 365, este livro é perfeito para adquirir proficiência rapidamente.</p>',
 'office365','N'),
 
 (Default,'978-85-7522-270-6','3','Moodle para Autores e Tutores','8','184','42.00',
'<p>Este livro objetiva aprimorar os conhecimentos técnicos e pedagógicos de profissionais que utilizam o MOODLE (Modular
 Object-Oriented Dynamic Learning Environment) como ambiente virtual de aprendizagem em seus cursos, sejam eles a 
 distância, sejam presenciais. A intenção é levar ao conhecimento dos leitores as formas de uso e potencialidades 
 pedagógicas dos principais recursos, atividades e blocos a partir de possibilidades oferecidas pela WEB 2.0.</p>
 <p>O livro tem como base práticas e experiências em diferentes ambientes educacionais que, efetivamente, utilizam as
 tecnologias de informação e comunicação digitais tanto para construção quanto para o gerenciamento e tutoria de cursos.
 Nesse contexto, a intenção é disponibilizar uma obra que ultrapassasse o conceito de manual, uma vez que permite ao leitor
 conhecer e decidir, à luz da WEB interativa, formas interessantes e criativas para comporem suas salas e ambientes virtuais.</p>
 <p>Para que o objetivo do livro possa ser atingido, este se encontra estruturado em capítulos que mesclam teoria e prática. Assim, 
 na introdução, são apresentados alguns dos principais conceitos presentes no uso da tecnologia digital em educação. O capítulo 
 1 aborda as técnicas de criação de cursos com o Moodle.</p>', 'moodle','N'),
 
 (Default,'978-85-7522-693-3','2','Estruturas de dados e algoritmos com JavaScript','9','408','95.00',
'<p>Uma estrutura de dados é uma maneira particular de organizar dados em um computador com o intuito de usar os recursos de modo
 eficaz. As estruturas de dados e os algoritmos são a base de todas as soluções para qualquer problema de programação. Com este
 livro, você aprenderá a escrever códigos complexos e eficazes usando os recursos mais recentes da ES 2017.</p>
 <p>O livro Estruturas de dados e algoritmos com JavaScript começa abordando o básico sobre JavaScript e apresenta a 
 ECMAScript 2017, antes de passar gradualmente para as estruturas de dados mais importantes, como arrays, filas, pilhas e listas
 ligadas. Você adquirirá um conhecimento profundo sobre como as tabelas hash e as estruturas de dados para conjuntos funcionam,
 assim como de que modo as árvores e os mapas hash podem ser usados para buscar arquivos em um disco rígido ou para representar
 um banco de dados. Este livro serve como um caminho para você mergulhar mais fundo no JavaScript. Você também terá uma melhor
 compreensão de como e por que os grafos – uma das estruturas de dados mais complexas que há – são amplamente usados em sistemas
 de navegação por GPS e em redes sociais.</p>
 <p>Próximo ao final do livro, você descobrirá como todas as teorias apresentadas podem ser aplicadas para solucionar problemas
 do mundo real, trabalhando com as próprias redes de computador e com pesquisas no Facebook.</p>',  'estrutura_javascript','S'),
 
 (Default,'978-85-7522-679-7','4','Como montar um Robô','10','56','39.00',
'<p>Monte seu próprio robô inteligente 5 em 1 a partir do zero!</p>
 <p>Com este manual ilustrado totalmente colorido, você aprenderá a montar um robô programável sobre uma base que será construída
 a partir de materiais baratos. Além disso, acrescentará motores, alimentação, rodas e componentes eletrônicos para realmente montar
 cinco robôs em um! Monte seu robô em etapas a acrescente os recursos que desejar.</p>
 <p>Explore conceitos de eletrônica à medida que aprende sobre o funcionamento de comutadores, detectores ultrassônicos e
 infravermelhos e sensores ópticos. Instale uma placa de microcontrolador Arduino e aprenda a programar seu robô para evitar
 obstáculos, fornecer feedback luminosos e sonoros e seguir um traçado. Com a ajuda deste manual de fácil utilização, você
 combinará várias disciplinas — eletrônica, programação e engenharia — para montar com sucesso um robô multifuncional. Divirta-se
 enquanto aprende!</p>',  'montar_robo','N'); 
 
 
 
select * from tbl_autor;
select * from tbl_categoria;
select * from tbl_livro;
 
 
 
 GRANT ALL PRIVILEGES ON db_EditoraonLine.* TO 'programador'@'localhost' WITH GRANT OPTION;
 


 
 

 
 
 