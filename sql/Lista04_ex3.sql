

USE ESCOLA;

CREATE TABLE instrutores (
  id INT NOT NULL AUTO_INCREMENT,
  nome VARCHAR(50) NOT NULL,
  email VARCHAR(50) NOT NULL,
  valor_hora INTEGER UNSIGNED NULL,
  certificados VARCHAR(255) NULL,
  PRIMARY KEY(id)
);
CREATE TABLE cursos (
  id INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
  nome VARCHAR(50) NOT NULL,
  requisito VARCHAR(255) NULL,
  carga_horaria SMALLINT UNSIGNED NULL,
  preco DOUBLE UNSIGNED NULL,
  PRIMARY KEY(id)
);
 
CREATE TABLE alunos (
  id INT NOT NULL AUTO_INCREMENT,
  cpf CHAR(11) NOT NULL,
  nome VARCHAR(50) NOT NULL,
  email VARCHAR(50) NOT NULL,
  fone CHAR(14) NOT NULL,
  data_nascimento DATE NULL,
  PRIMARY KEY(id)
);
 
CREATE TABLE turmas (
  id INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
  instrutores_id INT NOT NULL,
  cursos_id INTEGER UNSIGNED NOT NULL,
  data_inicio DATE NULL,
  data_final DATE NULL,
  carga_horaria SMALLINT UNSIGNED NULL,
  PRIMARY KEY(id),
  INDEX turmas_FKIndex1(cursos_id),
  INDEX turmas_FKIndex2(instrutores_id),
  CONSTRAINT CURSO_TURMA_FK FOREIGN KEY(cursos_id)
    REFERENCES cursos(id),
  CONSTRAINT INSTRUTOR_TURMA_FK FOREIGN KEY(instrutores_id)
    REFERENCES instrutores(id)
);
 
CREATE TABLE matriculas (
  id INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
  turmas_id INTEGER UNSIGNED NOT NULL,
  alunos_id INT NOT NULL,
  data_matricula DATE NULL,
  PRIMARY KEY(id),
   CONSTRAINT ALUNO_MATRICULA_FK FOREIGN KEY(alunos_id)
    REFERENCES alunos(id),
  CONSTRAINT TURMA_MATRICULA_FK FOREIGN KEY(turmas_id)
    REFERENCES turmas(id)
);
insert into instrutores (nome,email,valor_hora,certificados) values
	('João Paulo','joão@bpk.com','matematica'),
    ('Pedro Costa','pedro@bpk.com','portugues'),
    ('Jose Silva','jose@bpk.com','historia'),
    ('Maria Rosa','maria@bpk.com','quimica'),
    ('Ana Carolina','ana@bpk.com','musica');
select * from instrutores;
insert into alunos (cpf,nome,email,fone,data_nascimento) values 
	('10000000001','Carlos Eduardo','ce@bpk.com','05545999999991','2005-01-02'),
    ('10000000002','Maria Clara','mc@bpk.com','05545999999992','2005-06-30'),
    ('10000000003','Luiz Silva','ls@bpk.com','05545999999993','2004-08-23'),
    ('10000000004','Helena Sousa','hs@bpk.com','05545999999994','2003-09-12'),
    ('10000000005','Bento Oliveira','b0@bpk.com','05545999999995','2004-11-29');
select * from alunos; 
insert into cursos (nome,requisito,carga_horaria,preco) values 
		('historia da arte','ensino medio completo','50','200'),
        ('matematica para programadores','ensino medio completo','150','599'),
        ('redação de milhoes','alfabetizado', '50','149'),
        ('arrase na feira de ciencias','12 anos','80','300'),
        ('violino classico','7 anos','500','1000');
select * from cursos;
insert into turmas (instrutores_id,cursos_id,data_inicio,data_final,carga_horaria)
	values
		('1','2','2022-09-01','2022-10-30','150'),
        ('2','3','2022-09-02','2022-10-01','50'),
        ('3','1','2022-09-03','2022-10-15','50'),
        ('4','4','2022-09-01','2022-10-25','80'),
        ('5','5','2022-06-15','2022-12-20','500');
select * from turmas;
insert into matriculas (turmas_id,alunos_id,data_matricula) 
	values 
		('1','10','2022-08-15'),
        ('2','9','2022-08-20'),
        ('3','8','2022-08-17'),
        ('4','7','2022-08-22'),
        ('5','6','2022-08-19');
select * from matriculas;
update instrutores set nome='Teresa Cristina' where id='1';
select * from instrutores;
update instrutores set email='teresa@bpk.com' where nome='Teresa Cristina';
select * from instrutores;
update cursos set nome='Redação' where id='3';
select * from cursos;
update cursos set carga_horaria='60' where nome='Redação';
select * from cursos;
select * from turmas;
update turmas set instrutores_id='3' where id='2';
select * from turmas;
update turmas set instrutores_id='2' where id='3';
select * from turmas;
delete from matriculas where id='7';
delete from matriculas where id='8';
select * from matriculas;
delete from turmas where id='2';
delete from turmas where id='3';
select * from turmas;
delete from cursos where id='3';
delete from cursos where id='1';
select * from cursos;
delete from alunos where id='8';
delete from alunos where id='9';
select * from alunos;
delete from instrutores where id='2';
delete from instrutores where id='3';
select * from instrutores;