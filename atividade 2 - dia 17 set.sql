create database universidade;

use universidade;

create table biblioteca(
	id_biblioteca int primary key,
	campus varchar(15),
    endereco varchar(50),
    telefone smallint,
    email varchar(20),
    responsavel varchar(15)
);

create table livro(
	id_livro int primary key,
    fk_biblioteca int unique,
    titulo varchar(15),
    genero varchar(10),
    qtd smallint,
    isbn int,
    resumo varchar(250),
    autor varchar(30),
    pagina smallint,
    foreign key (fk_biblioteca) references biblioteca(id_biblioteca)
);

create table aluno(
	RA int primary key,
    curso varchar (40) unique,
    semestre tinyint
);

create table reserva(
	id_reserva int primary key,
    id_aluno int,
    data_saida date,
    prev_entrega date,
    observacao varchar(50),
    foreign key (id_aluno) references aluno(RA)
);

create table item_livro(
	id_livro int,
    id_reserva int,
    qtd smallint,
    foreign key (id_livro) references livro(id_livro),
	foreign key (id_reserva) references reserva(id_reserva)
);

insert into biblioteca(id_biblioteca, campus, endereco, telefone, email, responsavel) values (0, "Mogi", "Rua dos Tolos", 123456789, "biblioteca@umc.com", "Fulano de tal");
insert into livro(id_livro, fk_biblioteca, titulo, genero, qtd, isbn, resumo, autor, pagina) values (0, 0, "arquitetura", "didatico", 4, 4444, "Livro que ensina arquitetura computacional", "Tannenbaun", 400);
insert into aluno(RA, curso, semestre) values (2000, "Engenharia de Software", 3);

update livro set titulo="Computadores" where titulo="arquitetura";
update aluno set curso="Ciencia da Computacao" where RA=2000;
update biblioteca set endereco="Rua Doutor Wertheimer" where campus="Mogi";

delete from aluno where RA=2000;
delete from livro where titulo="Computadores";