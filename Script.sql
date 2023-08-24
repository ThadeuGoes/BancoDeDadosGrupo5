PRAGMA foreign_keys = ON;

--Criando tabelas

CREATE TABLE usuario(
	codigo integer primary key autoincrement not null,
	nome text not null,
	nomedeusuario text not null,
	cpf text not null,
	datadenascimento date not null,
	pais text not null,
	estado text not null,
	cidade text not null,
	rua text not null,
	numero integer,
	complemento text,
	Telefone_pessoal integer not null,
	Telefone_profissional integer
);

CREATE TABLE categoria(
	codigo integer primary key autoincrement not null,
	nome text,
	descricao text
);

CREATE TABLE pedido (
	codigo integer primary key autoincrement not null,
	codigo_usuario integer,
	quantidade_pruduto integer not null,
	data_pedido date not null,
	foreign key (codigo_usuario) references usuario(codigo)
);

CREATE TABLE produto (
	codigo integer primary key autoincrement not null,
	codigo_categoria integer,
	codigo_usuario integer,
	nome text not null,
	descricao text,
	quantidade_em_estoque integer not null,
	valor_unitario integer not null,
	codigo_de_venda integer not null,
	data_de_fabricacao date not null,
	foreign key (codigo_categoria) references categoria(codigo),
	foreign key (codigo_usuario) references usuario(codigo)
);

CREATE TABLE produto_pedido (
	codigo integer primary key autoincrement not null,
	codigo_produto integer,
	codigo_pedido integer,
	foreign key (codigo_produto) references produto(codigo),
	foreign key (codigo_pedido) references pedido(codigo)
);

--Inserção de dados na tabela usuário

INSERT into usuario (
	nome,
	nomedeusuario,
	cpf,
	datadenascimento,
	pais,
	estado,
	cidade,
	rua,
	numero,
	Telefone_pessoal,
	Telefone_profissional
) VALUES (
	"Thomas Victor",
	"thomasten22",
	33355577789,
	"1999-06-18",
	"Brasil",
	"RJ",
	"Petrópolis",
	"Rua joaquim José",
	161,
	24988552230,
	2422231590
),(
	"Lucas Oliveira",
	"LucasOliveira",
	11122266600,
	"1990-01-02",
	"Brasil",
	"RJ",
	"Petrópolis",
	"Rua Henrique José",
	16,
	24988552233,
	2422211590
),(
	"Thadeu Goes",
	"Thadeugoes",
	33244377680,
	"1993-04-11",
	"Brasil",
	"RJ",
	"Petrópolis",
	"Rua José Henrique",
	6,
	24988552240,
	2422221590
),(
	"Pedro Teixeira",
	"Pedroteixeira",
	55590986832,
	"2000-02-20",
	"Brasil",
	"RJ",
	"Petrópolis",
	"Rua José Emanuel",
	65,
	24988553340,
	2422234570
),(
	"Ramon Gall",
	"Ramongall",
	65679738209,
	"1991-09-09",
	"Brasil",
	"RJ",
	"Petrópolis",
	"Rua José Emanuel",
	65,
	24988326789,
	2422315978
),(
	"Matheus Botelho",
	"Matheusbotelho",
	18345975709,
	"2004-08-24",
	"Brasil",
	"RJ",
	"Petrópolis",
	"Rua Sao Tomas De Aquino",
	5,
	249993756049,
	2422238970
);

--Inserção de dados na tabela categoria

INSERT INTO categoria  (
	nome,
	descricao 
)values(
	"Diversos",
	"Produtos que nao encaixam em nenhuma outra categoria"
),(
	"Vestimenta",
	"Roupas e acessorios em geral"
),(
	"Eletrodomesticos",
	"Tudo para o seu lar"
),(
	"Aparelhos telefonicos",
	"Celulares e telefones fixos"
),(
	"Brinquedos",
	"Tudo para sua diversão"
);

INSERT INTO categoria (
	nome, 
	descricao
) VALUES (
	"Eletrônicos", 
	NULL
),  (
	"Calçados", 
	"Tênis, Botas, Sapatos sociais"
), (
	"Música", 
	"Intrumentos musicais e acessórios"
);

alter table pedido rename quantidade_pruduto 
to quantidade_produto;--Alter table para corrigir o nome da coluna. 
alter table produto 
drop column codigo_de_venda;--Alter table para remover uma linha desnecessária.

--Inserção de dados na tabela produto

INSERT INTO produto (
	codigo_categoria,
	codigo_usuario,
	nome,
	descricao,
	quantidade_em_estoque,
	valor_unitario,
	data_de_fabricacao
)values(
	1,
	3,
	'Colete refletivo para galinha unisex',
	'Colete refletor para sua galinha / galo não ser atropelado.',
	2,
	50.99,
	'2023-08-22'
),(
	2,
	1,
	'terno a prova de balas do Jackie Chan',
	'Para você que presa por estilo e por sua vida.',
	10,
	10000.00,
	'2002-05-10'
),(
	3,
	2,
	'Iogurteira top therm',
	'Contem omega3!!!',
	200,
	350.00,
	'1995-08-27'
),(
	5,
	5,
	'Kit de aviãozinho do Silvio Santos',
	'Para você agitar a multidão(Dinheiro sem valor monetario!).',
	4,
	29.99,
	'1991-01-15'
),(
	4,
	4,
	'Ibanana',
	'Telefone celular com um design diferenciado. Unico exemplar, afinal, para que fazer um monte de celular em formato de banana.',
	1,
	6000.00,
	'2023-08-05'
),(
	6,
	6,
	'Modulador de voz do Silvio Santos',
	'Quer imitar perfeitamente o nosso querido Silvio Santos, agora você pode.',
	34,
	150.00,
	'2019-04-02'
),(
	7,
	5,
	'Tenis LeBron exclusive edition Naldo',
	'Compre o unico tenis LeBron que nem o proprio LeBron tem.',
	1,
	100000.00,
	'2014-01-30'
),(
	8,
	2,
	'Coletânea maiores sucessos caneta azul',
	'Essa coletânea de musicas vai despertar vários sentimentos em você meu caro comprador.',
	450,
	9.99,
	'2023-02-15'
);

INSERT INTO pedido (
 	codigo_usuario,
	quantidade_produto,
	data_pedido
) values(
6, 
5,
"2023-08-22"
),(
2,
8,
"2023-08-19"
),(
1,
3,
"2022-07-15"
),(
5,
6,
"2020-09-20"
),(
6,
4,
"2019-08-17"
),(
3,
8,
"2021-08-16"
);

INSERT INTO produto_pedido (
	codigo_produto,
	codigo_pedido 
) values (
	1,
	2
	),(
	2,
	3
	),(
	3,
	4
	),(
	4,
	5
	),(
	5,
	6
	),(
	6,
	1
	);

--Update no nome de usuario
UPDATE usuario 
	SET nomedeusuario = 'Lucas.Oliveira' 
	WHERE nomedeusuario = 'LucasOliveira' 
;
-- Delete
DELETE FROM pedido 
	WHERE codigo  = 1
;

SELECT * FROM produto p 
INNER JOIN usuario u ON u.codigo = p.codigo_usuario;

SELECT nomedeusuario FROM usuario u 
INNER JOIN produto p ON p.codigo_usuario = u.codigo 
INNER JOIN categoria c ON c.codigo = p.codigo_categoria;

SELECT nome,
       quantidade_produto,
       data_pedido
FROM usuario u
INNER JOIN pedido p ON p.codigo_usuario = u.codigo;

SELECT COUNT (*), nomedeusuario
FROM produto p 
INNER JOIN usuario u ON u.codigo = p.codigo_usuario
GROUP BY u.nome;

--Listagem de comprador e vendedor
SELECT p.codigo_usuario as cod_comprador,
        u.nome as comprador,
        pr.nome,
    p.data_pedido,
    pr.codigo_usuario as cod_vendedor, 
    u2.nome 
FROM usuario u
INNER JOIN pedido p  on p.codigo_usuario = u.codigo
INNER JOIN produto_pedido pp on pp.codigo_pedido = p.codigo 
INNER JOIN produto pr on pr.codigo = pp.codigo_produto 
INNER JOIN usuario u2 on u2.codigo = pr.codigo_usuario

--Nota fiscal
SELECT p.codigo,
u.nome Nome_Comprador,
u.nomedeusuario Nome_Usuario,
u.cpf,
u.Telefone_pessoal ,
u.Telefone_profissional,
u.pais,
u.estado ,
u.cidade ,
u.rua ,
u.numero ,
p2.nome Produto_Comprado, 
p2.valor_unitario, 
p.quantidade_produto, 
p.quantidade_produto * p2.valor_unitario
FROM pedido p
INNER JOIN produto_pedido pp ON p.codigo = pp.codigo_pedido 
INNER JOIN produto p2 ON p2.codigo = pp.codigo_produto
INNER JOIN usuario u ON u.codigo = p.codigo_usuario
WHERE p.codigo = 2;
