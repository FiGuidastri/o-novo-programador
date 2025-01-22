create database onp;

use onp;

drop table if exists alunos;

create table alunos(
	id int(11) auto_increment,
	nome varchar(150),
	email varchar(100),
	telefone varchar(20),
	senha varchar(32),
	primary key (id)
);

insert into alunos (nome, email, telefone, senha)
values ('Filipe Guidastri', 'filipeguidastri@gmail.com', '(14)99747-5662', 'asdqwe123!@#');

create table endereco(
	id int(11) auto_increment,
	id_aluno int(11),
	estado varchar(2),
	cidade varchar(150),
	bairro varchar(150),
	rua varchar(200),
	numero int(6),
	complemento varchar(200) null,
	primary key (id)
);

alter table onp.endereco 
add CEP varchar(9) not null;

insert into endereco(id_aluno, estado, cidade, bairro, rua, numero, CEP, complemento)
values (2, 'SP', 'Lins', 'Bom Viver', 'Henrique Bertin', 76, '16403-435', 'https://builders.onovoprogramador.com/home');

create table cursos(
	id int(11) auto_increment,
	nome varchar(100),
	descricao varchar(450),
	preco float(11),
	logo varchar(450),
	primary key (id)
);

insert into cursos(nome, descricao, preco, logo)
values ('MySQL', 'lorem ipsum', 79.90, 'https://builders.onovoprogramador.com/home');

create table modulos(
	id int(11) auto_increment,
	id_curso int(11),
	nome varchar(100),
	descricao varchar(450),
	imagem varchar(450) null,
	primary key (id)
);

insert into modulos(id_curso, nome, descricao, imagem)
values (1, 'Introducao', 'Aula introdutoria', 'https://builders.onovoprogramador.com/cursos/modulos/1');

create table aulas(
	id int(11) auto_increment,
	id_curso int(11),
	id_modulo int(11),
	titulo varchar(150),
	descricao VARCHAR(450),
	link varchar(450),
	duracao varchar(6),
	capa varchar(450),
	primary key (id)
);

