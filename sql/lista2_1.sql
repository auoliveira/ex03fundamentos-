-- lista2
create database lista002;
use database lista002;
create table alunos(id_alunonome varchar(50),
			telefone varchar(50),
			cidade varchar(50)
 );
 alter table alunos add nome varchar(50);
 create table alunos2(id_aluno int, 
			nome varchar (200), 
            telefone varchar(50),
            cidade varchar (100)
);
desc alunos2;
drop table funcionarios;
create table funcionarios(id_funcionario int, 
				nome varchar(50), 
                endereco varchar (50), 
                telefone varchar (50), 
                cidade varchar (50), 
                estado varchar(50), 
                cep varchar(9), 
                rg varchar(20),
				cpf varchar(11), 
                salario float
);
create table fornecedores(id_fornecedor int, 
			nome varchar(50), 
            endereco varchar(50), 
            telefone varchar(50), 
            cidade varchar(50), 
            estado varchar(50), 
            cep char(9),
			cnpj char (14), 
            email varchar(100)
);
desc fornecedores;
create table livros(id_livro int, 
			nome varchar(50), 
            categoria varchar (50), 
            resumo varchar (50), 
            precocusto float , 
            precovenda float
);
create table estoque(id_estoque int, 
			nomeproduto varchar(50), 
            categoria varchar(50), 
            quantidade float,
			fornecedor int
);
desc estoque;
create table notas(id_notas int,
				nomealuno varchar(50),
                bimestre int
);
create table caixa(id_caixa int,
				ddmmaaaa char(10),
                descricao varchar (100),
                debito float,
                credito float
);
desc caixa;
create table contasApagar(id_conta int,
			data_conta char(10),
            decricao varchar(100),
            valor float,
            data_pagamento char(10)
);
desc contasApagar;
create table contasAreceber(id_conta int,
			data_conta char(10),
            decricao varchar(100),
            valor float,
            data_recebimento char(10)
);
create table filmes(id_filme int,
			sinopse varchar(100),
            categoria int,
            diretor varchar(20)
);
create table cds(id_cd int,
			nome_album varchar(50),
            cantor varchar(50),
            ano int,
            qnt_musicas int
);
drop table alunos2;
desc alunos2;
drop table livros;
drop table contasapagar;
drop table contasareceber;
drop table filmes;
desc livros;
desc contasapagar;
desc contasareceber;
desc filmes;
alter table alunos rename to super_alunos;
desc super_alunos;
alter table estoque rename to produtos;	
desc produtos;
alter table notas rename to aprovados;
alter table aprovados rename to notas;
drop table dinheiro;
drop table notas;
alter table super_alunos rename to alunos;
alter table alunos rename to estudantes;
alter table estudantes rename to super_estudantes;
desc super_estudantes;
drop table super_estudantes;
desc super_estudantes;
desc alunos;
create table alunos(id_alunonome varchar(50),
			telefone varchar(50),
			cidade varchar(50)
);
desc alunos;
alter table alunos add estado varchar(50);
desc alunos;
create table caixa;
alter table caixa add observacao varchar(50);
desc caixa;
alter table alunos add CPF char(11);
desc alunos;
alter table caixa add saldo float;





