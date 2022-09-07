create database escola;
use escola;
create table professor(
	id_professor int not null auto_increment unique primary key,
    nome varchar (30) not null,
    disciplina varchar (30) not null
);
create table turma(
	id_turma int not null auto_increment unique primary key,
    nome varchar (30)
);
create table aluno(
	id_aluno int not null auto_increment unique primary key,
    id_turma int not null,
    nome varchar (30),
    data_nascimento date not null,
    constraint fk_turma foreign key (id_turma) references turma (id_turma)
);
create table aula(
	id_aula int not null unique auto_increment primary key,
    id_professor int not null,
    disciplina varchar (30) not null,
    constraint fk_professor foreign key (id_professor) references professor (id_professor)
);
create table prof_turma(
	id_professor int not null,
    id_turma int not null,
    primary key(id_professor,id_turma),
    constraint fk_profturma foreign key (id_professor) references professor (id_professor),
    constraint fk_turmaprof foreign key (id_turma) references turma (id_turma)
);
create table aluno_aula(
	id_aula int not null,
    id_aluno int not null,
    primary key (id_aula, id_aluno),
    constraint fk_aulaaluno foreign key (id_aula) references aula (id_aula),
    constraint fk_alunoaula foreign key (id_aluno) references aluno (id_aluno)
);
insert into professor (nome,disciplina)
		value ("João","matematica");
insert into professor (nome,disciplina)
		value ("Pedro","historia");
insert into turma (nome)
		value ("3° ano");
insert into turma (nome)
		value ("2° ano");
insert into aluno (nome,id_turma,data_nascimento)
		value ("Daniel","1", "2005-04-28");
insert into aluno (nome,id_turma,data_nascimento)
		value ("carlos","2", "2004-12-08");
insert into aula (id_professor,disciplina)
		values ("1", "historia");
insert into aula (id_professor,disciplina)
		values ("2","matematica");
update aula 
set disciplina ='matematica'
where id_professor ='1';
update aula set disciplina ='historia' where id_professor = '2';
select * from aula;
update professor set nome='Jose' where nome='João';
update turma set nome='1° ano' where nome='3° ano';
update aluno set nome='Carlos' where nome='carlos';
update aula set id_professor='2' where 	disciplina='matematica';
update aula set disciplina='historia' where id_professor = '2';
insert into prof_turma (id_professor,id_turma) values ("1","1");
insert into prof_turma (id_professor,id_turma) values ("1","2");
update prof_turma set id_professor='2' where id_turma ='2';
insert into aluno_aula (id_aula,id_aluno) 
	values ('2','2'),
            ('1','3');
update aluno_aula set id_aula='1' where id_aula='2';
delete from aluno_aula where id_aluno ='3';
delete from prof_turma where id_turma='2';
delete from aula where disciplina='matematica';
select *from aula;
delete from aula where id_aula= '1';
delete from turma where nome='1° ano';  
delete from professor where id_professor='1';  
delete from aluno_aula where id_aula='1';
delete from aula where id_aula='1';
delete from professor where id_professor='1';
delete from prof_turma where id_turma='1';
delete from professor where id_professor='1';
delete from turma where id_turma='1';
delete from aluno where nome='daniel';
delete from turma where id_turma='1';autor
