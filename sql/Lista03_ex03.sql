drop database teste;
create database revendedora_carros;
use revendedora_carros;
create table clientes(
	id_cliente int not null unique auto_increment,
    nome varchar (40) not null,
    fone int,
    CEP char (8) default '00000000',
    rua varchar (40),
    numero int,
    complemento varchar (20),
    bairo varchar (40),
    cidade varchar (40),
    estado varchar (40) default 'Parana',
    primary key (id_cliente)
);
desc clientes;
create table vendedores(
	id_vendedor int not null unique auto_increment primary key,
    nome varchar (40) not null,
    fone int,
    CEP char (8) default '00000000',
    rua varchar (40),
    numero int,
    complemento varchar (20),
    bairo varchar (40),
    cidade varchar (40),
    estado varchar (40) default 'Parana',
    salario decimal (9,2) default '2500',
    admissao date
    );
    desc table vendedores;
    create table carros(
		id_carro int unique not null auto_increment primary key,
        renavam varchar (9) not null unique default '000000000',
		placa varchar (7) unique not null default '0000000', 
        marca varchar (20),
        modelo varchar (15), 
        ano_fabricação year, 
        ano_modelo year, 
        cor varchar (25), 
        motor varchar (20), 
        número_portas int (1), 
		tipo_combustível varchar(8), 
        preço float not null,
        id_venda int,
        constraint fk_venda foreign key (id_venda) references vendas (id_venda)
);
create table vendas(
		id_venda int not null unique primary key,
        data_venda date,
        valor float,
        id_vendedor int,
        id_cliente int,
        constraint fk_vendedor foreign key (id_vendedor) references vendedores (id_vendedor),
        constraint fk_comprador foreign key (id_cliente) references clientes (id_cliente)
);    
drop table carros;