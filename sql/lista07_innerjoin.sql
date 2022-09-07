-- Consultar titulo livro, nome editora, nome estilo e nome autor;

select l.titulo,e.nome,ed.nome,a.nome from livro l
join livro_estilo le
on l.id_livro=le.id_livro
join estilo e
on e.id_estilo=le.id_estilo
join editora ed 
on ed.id_editora=l.id_editora
join livro_autor la
on l.id_livro = la.id_livro
join autor a
on a.id_autor = la.id_autor;

 -- Consultar titulo livro, nome editora. Onde o telefone da editora seja igual a 12345;
 
select l.titulo, ed.nome from editora ed 
join livro l
on ed.id_editora=l.id_editora
where ed.telefone = '12345';

-- Consultar titulo livro, nome autor. Onde autor tenha idade igual a 35;
 
select l.titulo, a.nome,a.idade from livro l
right join livro_autor la
on l.id_livro=la.id_livro
right join autor a 
on a.id_autor = la.id_autor
where a.idade = '35';

-- Consultar titulo livro, nome autor e editora. Onde autor tenha o nome de Dan Brown

select l.titulo, ed.nome, a.nome from editora ed
join livro l 
on ed.id_editora = l.id_editora
join livro_autor la
on l.id_livro = la.id_livro
join autor a
on a.id_autor = la.id_autor
where a.nome = 'Dan Brown';

-- Consultar titulo livro, nome autor e editora. Onde autor tenha o nome de Dan Brown e idade igual a 35

select l.titulo, ed.nome, a.nome from editora ed
join livro l 
on ed.id_editora = l.id_editora
join livro_autor la
on l.id_livro = la.id_livro
join autor a
on a.id_autor = la.id_autor
where a.nome = 'Dan Brown' and a.idade='35';

-- Consultar titulo livro, nome autor e editora. Onde autor tenha o nome de Dan Brown e editora com o telefone igual a 123345;

select l.titulo, ed.nome, a.nome from editora ed
join livro l 
on ed.id_editora = l.id_editora
join livro_autor la
on l.id_livro = la.id_livro
join autor a
on a.id_autor = la.id_autor
where a.nome = 'Dan Brown' and ed.telefone='123345';

-- Consulta titulo livro, nome estilo dos livros do estilo Romance;

select l.titulo, e.nome from livro l
join livro_estilo le 
on l.id_livro = le.id_livro
join estilo e
on e.id_estilo = le.id_estilo
where e.nome = 'Romance';

-- Consulta titulo livro, nome estilo dos livros da editora Globo;

select l.titulo, e.nome from editora ed
join livro l 
on ed.id_editora = l.id_editora
join livro_estilo le
on l.id_livro = le.id_livro
join estilo e
on e.id_estilo = le.id_estilo
where e.nome = 'romance' and ed.nome='globo';

-- Consultar o livro de maior valor;

select l.titulo,  max(l.valor) from livro l;

-- Consultar o livro de menor valor;

select l.titulo, min(l.valor) from livro l;

-- Consultar a média de custo do livros;

select avg(l.valor) from livro l;

-- Consultar a média de custo dos autores;

select  avg (a.valor_hr) from autor a;


-- Contar o número de livros;

select count(l.id_livro) from livro l;

-- Consultar a quantidade de livros que editora de id_editora = 2;

select count(l.id_livro), ed.nome from editora ed
join livro l 
on ed.id_editora = l.id_editora
where ed.id_editora = '2';

-- Consultar quantos livros o id_estilo = 5 possui

select l.titulo,es.id_estilo,es.nome from livro l 
join livro_estilo ls
on l.id_livro=ls.id_livro
join estilo es
on es.id_estilo = ls.id_estilo
where es.id_estilo ='5';

-- Selecione os títulos dos livros e os respectivos nomes das editoras

select l.titulo, ed.nome from editora ed
join livro l 
on ed.id_editora = l.id_editora;

-- Selecione os títulos do livro, os respectivos nomes das editoras que começam com a letra A.

select l.titulo, ed.nome from editora ed
join livro l 
on ed.id_editora = l.id_editora
where ed.nome like 'a%';

-- Consultar apenas os autores que não possuem nenhum livro;

select a.nome,a.id_autor from autor a
left join livro_autor la
on a.id_autor = la.id_autor
left join livro l 
on l.id_livro = la.id_livro
where la.id_livro is null;

-- Consultar apenas as editoras que não possuem nenhum livro;

select ed.nome from editora ed 
left join livro l 
on ed.id_editora = l.id_editora
where l.id_editora is null;

-- Consultar apenas os estilo que não possuem nenhum livro

select e.nome,e.id_estilo from livro l 
right join livro_estilo ls
on l.id_livro = ls.id_livro
right join estilo e
on e.id_estilo = ls.id_estilo
where ls.id_livro is null;

-- Consultar os nomes dos autores e quantos livros cada autor possui; 

select a.nome, count(la.id_livro) from autor a 
join livro_autor la
on a.id_autor = la.id_autor
group by a.nome;

-- Consultar os nomes das editoras e quantos livros cada editora possui;

select ed.nome, count(l.id_livro) from editora ed
join livro l
on ed.id_editora = l.id_editora
group by ed.nome;

-- Consultar os nomes das estilo e quantos livros cada estilo possui;

select e.nome, count(ls.id_livro) from estilo e
join livro_estilo ls
on e.id_estilo = ls.id_estilo
group by e.nome;

-- Consultar quantos livros a editora CCCC possui;

select ed.nome, count(l.id_livro) from editora ed
join livro l
on ed.id_editora = l.id_editora
where ed.nome = 'CCCC';

-- Consultar quantos livros o autor J R R Tolkien possui;

select a.nome, count(la.id_livro) from autor a
join livro_autor la
on a.id_autor = la.id_autor
where a.nome = 'j r r tolkien';













