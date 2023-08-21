PRAGMA foreign_keys = ON;

CREATE TABLE usuario(
	codigo integer primary key autoincrement not null,
	nome text not null,
	nomedeusuario text not null,
	cpf text not null,
	datadenascimento text not null,
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