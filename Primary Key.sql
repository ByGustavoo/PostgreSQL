-- Primary Key, não pode ser nula e tem que ser única.

--> Criando a tabela 'curso'.
    
create table curso (
    id serial primary key,
    curso varchar(255) not null
);


--> Inserindo dados na tabela 'curso'.

insert into curso(curso) values ('Java');
insert into curso(curso) values ('Angular');


--> Fazendo uma consulta retornado todos os dados da tabela 'curso'.

select * from curso

    
--> Criando a tabela 'aluno'.
    
create table aluno(
    id serial primary key,
    nome varchar(255)
);

--> Inserindo dados na tabela 'aluno'.

insert into aluno(nome) values ('Gustavo');
insert into aluno(nome) values ('Giovanna');


--> Fazendo uma consulta retornado todos os dados da tabela 'aluno'.

select * from aluno a
