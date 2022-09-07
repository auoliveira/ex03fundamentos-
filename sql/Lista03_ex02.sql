  -- exercicio2

create database eleicao;
use eleicao;
create table cargo(
			id_cargo int not null unique primary key,
			cod_cargo int not null unique,
			nome_cargo varchar (30) unique not null,
			salario float not null default '17000',
			numero_vagas int not null unique,
			check (nome_cargo = 'prefeito' or nome_cargo = 'vereador')
);
create table partido(
			id_partido int not null unique primary key,
			cod_partido int unique not null,
			Sigla char (5) unique not null, 
			Nome varchar (40) unique not null,
			Numero int not null
);
create table candidato(
			id_candidato int not null unique primary key,
			Numero_Candidato int unique not null,
			Nome varchar (40) unique not null,
			id_cargo int not null,
			id_partido int not null,
			constraint fk_cargo foreign key (id_cargo) references cargo (id_cargo),
			constraint fk_partido foreign key (id_partido) references partido (id_partido)
);
create table voto(
			Titulo_Eleitor varchar (30) unique not null primary key,
			numero_candidato int not null,
			id_candidato int not null,
			constraint fk_candidato foreign key (id_candidato) references candidato (id_candidato)
);
create table eleitor(
			titulo_eleitor varchar (30) unique not null primary key,
			zona_eleitoral char (5) not null,
			Sessao_Eleitoral char (5) not null,
			Nome varchar (40) not null
);
    

