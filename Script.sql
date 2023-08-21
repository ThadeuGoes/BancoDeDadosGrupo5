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