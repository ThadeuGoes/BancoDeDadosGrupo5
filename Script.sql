PRAGMA foreign_keys = ON;

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

<<<<<<< HEAD
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
=======
INSERT INTO categoria (
	nome, 
	descricao
) VALUES (
	"Eletrônicos", 
	NULL
), (
	"Vestuário para animais", 
	"Coletes de segurança, blusas e outras vestimentas para animais"
), (
	"Eletrodomésticos", 
	NULL
), (
	"Calçados", 
	"Tênis, Botas, Sapatos sociais"
), (
	"Música", 
	"Intrumentos musicais e acessórios"
);

SELECT * FROM usuario u 



	

>>>>>>> 3fc46c9bf8c177876edd0f0abb8d041fa7d503fe

alter table pedido rename quantidade_pruduto to quantidade_produto;