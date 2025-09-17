create database atividade;

use atividade;

CREATE TABLE cliente(
	cod_cliente int,
	nome varchar(50),
	cpf varchar(14),
	rua varchar(50),
	num varchar(5),
	bairro varchar(50), 
	cidade varchar(50),
	uf varchar(2),
	cep varchar(9),
	PRIMARY KEY (cod_cliente)
);

INSERT INTO cliente (cod_cliente, nome, cpf, rua, num, bairro, cidade, uf, cep)
VALUES (1, 'GILBERTO','12345678901', 'Av. Astronautas', '1333', 'Cidade Jardim', 'S.J. dos Campos', 'SP','12227-220');

#erro: entrada duplicada para a primary key no primeiro parametro
# INSERT INTO cliente (cod_cliente, nome, cpf, rua, num, bairro, cidade, uf, cep) VALUES (1,'EDUARDO','12345678902', 'Av.X', '1456', 'Vila', 'Rio de Janeiro', 'RJ', '35000000');

#correcao

INSERT INTO cliente (cod_cliente, nome, cpf, rua, num, bairro, cidade, uf, cep) VALUES (5,'EDUARDO','12345678902', 'Av.X', '1456', 'Vila', 'Rio de Janeiro', 'RJ', '35000000');

####exercicio 3

#funciona, entretanto todas as instancias serao estas
INSERT INTO cliente VALUES (2, 'BRUNO','12345678902', 'Rua General', '195', 'Vila Azul', 'Ouro Preto', 'MG', '35400-000');

#nao foram inseridos os parametros corretos em ambos os inserts
#INSERT INTO cliente VALUES (3, 'RICARDO','12345678903', 'Rua Esquerda');
#INSERT INTO cliente VALUES ('ANTONIO','12345678904');

#correcao

INSERT INTO cliente VALUES (3, 'RICARDO','12345678902', 'Rua General', '195', 'Vila Azul', 'Ouro Preto', 'MG', '35400-000');
INSERT INTO cliente VALUES (4, 'BRUNO','12345678902', 'Rua General', '195', 'Vila Azul', 'Ouro Preto', 'MG', '35400-000');

#########exercicio 4

DELETE FROM cliente WHERE cod_cliente<0;
DELETE FROM cliente WHERE nome='bruno';
DELETE FROM cliente;

#########exercicio 5
UPDATE cliente SET nome='João' WHERE cod_cliente=0;
UPDATE cliente SET nome='João' WHERE nome='Bruno';