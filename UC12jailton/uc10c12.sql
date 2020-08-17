create database uc10;
use uc10;

create table tbProdutos(
idprod int auto_increment,
nomeprod varchar(20) not null,
precoun double not null,
qt int not null,
primary key (idprod)
);