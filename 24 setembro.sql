create database Venda_Produto;
use Venda_produto;

create table venda(
	codigo int not null,
    valor double(10, 2) not null,
    descricao varchar(50) not null,
    dt_venda date not null
);

alter table venda
	modify column codigo int primary key;

alter table venda
	add column recebido bool not null;
    
insert into venda(codigo, valor, dt_venda, descricao, recebido) values (0, 23.98, '25-01-25', "Vassoura",true);
insert into venda(codigo, valor, dt_venda, descricao,recebido) values (1, 10.98, '25-03-25', "Bife",false);
insert into venda(codigo, valor, dt_venda, descricao,recebido) values (2, 5.20, '25-05-25', "Bolacha",false);
insert into venda(codigo, valor, dt_venda, descricao,recebido) values (3, 2.11, '25-03-25', "Halls",true);
insert into venda(codigo, valor, dt_venda, descricao,recebido) values (4, 52.33, '25-10-25', "51",true);


#select * from venda;

#select descricao, dt_venda from venda;

#select * from venda where valor>500.0;

#select * from venda where valor<500.0;

#select * from venda where codigo > 0 and codigo < 5;

#select * from venda where dt_venda between '25-03-01' AND '25-07-01';


#select * from venda where recebido = false;

#delete from venda where recebido = false;

#select * from venda;

#select valor as preco, dt_venda as data_da_venda, descricao as observacao from venda;

#select * from venda where descricao = "vassoura";

#select * from venda where descricao = "c%";

select * from venda where descricao = "Vassoura" or descricao = "51";