select estilo.nome from estilo order by nome asc;

select autor.nome from autor order by nome desc;

select editora.nome,telefone from editora;

select editora.nome from editora;

select estilo.nome from estilo order by nome desc;

select estilo.id_estilo,nome from estilo where id_estilo = '3';

select autor.id_autor,nome from autor where id_autor ='1';

select editora.id_editora,nome from editora where id_editora ='4';

select livro.titulo,editora.nome from livro,editora 
where editora.id_editora = livro.id_editora;

select livro.titulo,editora.nome from livro, editora 
where editora.id_editora = livro.id_editora and editora.nome like 'a%';

select livro.titulo,editora.nome,estilo.nome,autor.nome from livro,editora,estilo,autor
where editora.id_editora=livro.id_editora and estilo.id_estilo = livro.id_estilo and autor.id_autor = livro.id_autor;

select livro.titulo,editora.nome from livro,editora
where editora.id_editora=livro.id_editora and editora.telefone = '12345';

select livro.titulo,autor.nome,idade from livro,autor
where autor.id_autor = livro.id_autor and autor.idade ='35';

select livro.titulo,autor.nome,editora.nome from livro,editora,autor
where( autor.id_autor=livro.id_autor and editora.id_editora=livro.id_editora)  and autor.nome = 'dan brown';

select livro.titulo,autor.nome,autor.idade,editora.nome from livro,editora,autor
where( autor.id_autor=livro.id_autor and editora.id_editora=livro.id_editora)  and autor.nome = 'dan brown' and autor.idade ='35';

select livro.titulo,autor.nome,autor.idade,editora.nome,editora.telefone from livro,editora,autor
where( autor.id_autor=livro.id_autor and editora.id_editora=livro.id_editora)  
and( autor.nome = 'dan brown' and autor.idade ='35' and editora.telefone = '123345');

select livro.titulo, estilo.nome from livro,estilo
where estilo.id_estilo=livro.id_estilo and estilo.nome ='romance';

select livro.titulo, estilo.nome, editora.nome from livro,estilo,editora
where (estilo.id_estilo=livro.id_estilo and editora.id_editora=livro.id_editora )
and editora.nome ='Globo';

select livro.titulo, autor.nome, editora.nome from livro,autor,editora
where autor.id_autor=livro.id_autor and editora.id_editora=livro.id_editora;
