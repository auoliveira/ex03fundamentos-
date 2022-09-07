-- lista03

create database clinica;
use clinica;
create table medicos(
			id_medico int not null unique auto_increment primary key,
			CRM varchar (15) not null unique,
			Nome varchar (40) not null,
            idade int, 
            check(idade>23),
            especialidade char(20) not null default'ortopedia',
            cpf varchar(15) unique not null,
            data_de_admissao date
);
desc medicos;
alter table medicos drop column idade;
alter table medicos add column data_nascimento date;
create table salas(
			id_sala int not null unique auto_increment primary key,
            Numero_sala int not null unique,
			check (Numero_sala>1 and Numero_sala<50),
            ID_CMR varchar (15) not null unique,
            constraint fk_CRM foreign key (ID_CMR) references Medicos (CRM),
            Andar int not null unique,
            check (Andar <12),
            id_medico int not null,
            constraint fk_medico foreign key (id_medico) references medicos (id_medico)
);
desc salas;
create table pacientes(
			id_paciente int not null unique auto_increment primary key,
			RG varchar (15) not null unique ,
			nome varchar (40) not null,
            data_nascimento date,
            cidade char (30) default 'itabuna',
            doenca varchar (40) not null,
            plano_saude varchar (40) not null default 'sus'
);
create table consultas(
			codigo_consulta int unique not null primary key,
			data_horario datetime,
            id_paciente int not null,
            id_medconsulta int not null,
            constraint fk_paciente foreign key (id_paciente) references pacientes (id_paciente),
            constraint fk_medconsulta foreign key (id_medconsulta) references medicos (id_medico)
);
desc consultas;
create table funcionarios(
			id_funcionario int unique not null primary key,
			matricula varchar(15) not null unique,
			nome varchar (40) not null,
            data_nacimento date not null,
            data_admissao date not null,
            cargo varchar (40) not null default'assistente medico',
            salario float not null default '510'
);
	