use controle_livros;
create table editora(
	id_editora int not null unique auto_increment primary key,
    nome varchar (30)
);
create table livro(
	id_livro int not null unique auto_increment primary key,
    nome varchar (50) not null unique,
    autor varchar (30) not null,
    categoria varchar (30) not null,
    id_editora int not null unique, 
    constraint fk_editora foreign key (id_editora) references editora (id_editora)
);  
create table autores(
	id_autor int not null unique auto_increment primary key,
    nome varchar (30) not null unique
);
create table categoria(
	id_categoria int not null unique auto_increment primary key,
    nome varchar (30)
);
create table categoria_livro(
	id_categoria int not null,
    id_livro int not null,
    primary key (id_categoria, id_livro),
    constraint fk_categoria foreign key (id_categoria) references categoria (id_categoria),
    constraint fk_livro foreign key (id_livro) references livro (id_livro)
);
create table autor_livro(
	id_autor int not null,
    id_livro int not null,
    primary key (id_autor, id_livro),
    constraint fk_autor foreign key (id_autor) references autores (id_autor),
    constraint fk_livroautor foreign key (id_livro) references livro (id_livro)
);
insert into editora (nome)
	value ("globo");
delete from editora
where id_editora = 2;

insert into editora (nome)
value ("abril"),("master"),("aspire");

insert into categoria (nome)
value ("terror"),("suspense"),("avetura"),("drama"),("investigação"),("romance");

insert into autores(nome)
value ("pedro"), ("joão"), ("jose"), ("maria"),("abner");

insert into livro (nome,autor,categoria,id_editora)
value ("adeus bezera","jose","terror",1);

insert into livro (nome,autor,categoria,id_editora)
value ("para sempre ate amanhã","maria","romance",4);

insert into livro values (" ate amanhã"),("pedro"),(	"romance",4);

insert into categoria_livro values ('6','2'),('1','1');

insert into autor_livro values ('4','2'),('3','1');

update autor_livro set id_livro='1' where id_livro='4';

delete from autor_livro where id_autor='3';

update categoria_livro set id_categoria='6' where id_categoria='1';

delete from categoria_livro where id_categoria='6';

update autores set nome='Alter' where nome='Abner';

delete from autores where id_autor='5';

update editora set nome='alt' where nome='abril';

delete from editora where id_editora ='1';

delete from livro where id_editora ='1';

delete from editora where id_editora ='1';

update livro set nome='perdi o amanhã' where nome= 'para sempre ate amanhã';



